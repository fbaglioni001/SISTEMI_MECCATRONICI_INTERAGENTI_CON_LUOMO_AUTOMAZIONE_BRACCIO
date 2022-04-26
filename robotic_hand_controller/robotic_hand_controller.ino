/*********************************************************************************************************
  BRACCIO ROBOTICO COMANDATO DA ROS
  PROGRAMMA CONTROLLO MANO A 5 GRADI DI LIBERTA'
  mediante utilizzo arduino micro
  Authors: Baglioni Francesco (f.baglioni001@studenti.unibs.it )
           Campregher Francesco (f.campregher@studenti.unibs.it)
           Mirandola Edoardo (e.mirandola@studenti.unibs.it)
  A.A. 2021/22
  REPO: https://github.com/fbaglioni001/SISTEMI_MECCATRONICI_INTERAGENTI_CON_LUOMO_AUTOMAZIONE_BRACCIO.git
**********************************************************************************************************/
#include "ServoFinger.h" //Classe sviluppata appositamente per gestire ogni dito
#include <Wire.h>

//a70,110,130,137,120,
//a157,20,3,46,32,

#define _DATA_BYTES 10 //Numero di byte che vengono trasferiti via i2c

#define NUM_FINGERS_ 5
//Tutti gli angoli sono moltiplicati per 100 in modo da lavorare con numeri interi.
#define MAX_1 157000 //Definire gli angoli limite per ogni dito. 
#define MIN_1 62000 //1: POLLICE
#define MAX_2 125000
#define MIN_2 17000 //2: INDICE
#define MAX_3 134000
#define MIN_3 1000 //3:MEDIO
#define MAX_4 154000
#define MIN_4 38000 //4:ANULARE
#define MAX_5 130000
#define MIN_5 30000 //5:MIGNOLO

//Definizione dei parametri che regolano la legge di moto
#define _SMOOTHING 70
#define _RESOLUTION 300 // 0.3 gradi

// DEFINIZIONE PIN SERVO
#define pin1 11
#define pin2 12
#define pin3 10
#define pin4 9
#define pin5 5
#define en_comunication 2 //enable i2c impostato a 1 per non scrittura

//DEFINIZIONE VELOCITA' MASSIMA SERVO
#define _START_DELAY 10

bool test_case = true;
String comando = "";

long unsigned int t[NUM_FINGERS_]; //Array che contiene i passi temporali di ogni dito
long unsigned int t_offset = 0;  // Offset temporale applicabile quando una movimentazione viene comandata (Come se fosse un delay)
String dato = "";
int is_setup = 0;
int index_ = 0;
int isMoving = 0;
int isRelative = 0;
unsigned int offsetTime = 0;
unsigned int totalTime = 0;
//VARIABILI MANO:
const long int home_angles[] = {
  MIN_1,
  MIN_2,
  MIN_3,
  MIN_4,
  MIN_5
};
const long int max_angles[] = {
  MAX_1,
  MAX_2,
  MAX_3,
  MAX_4,
  MAX_5
};

long int angles[NUM_FINGERS_];
int percentAngles[NUM_FINGERS_];
long int deltaAngle[NUM_FINGERS_];
int iterations[NUM_FINGERS_]; //Interazioni necessarie per eseguire la legge di moto
ServoFinger sf[NUM_FINGERS_];

//----------- Variabili i2c -------------
unsigned int triggerPin = en_comunication;
int data[_DATA_BYTES];

void setup() {
  pinMode(en_comunication, OUTPUT);
  digitalWrite(en_comunication, HIGH);
  
  Serial.begin(9600);
  //while (!Serial)
  
  Wire.begin(42); 
  Wire.onReceive(receiveData);
  noInterrupts();
  pinMode(triggerPin, OUTPUT);
  for (int i = 0; i < NUM_FINGERS_; i++) {
    sf[i] = ServoFinger();
  }
  // ============== SETUP DEGLI OGGETTI =================================
  sf[0].setAll(pin1, MIN_1, MAX_1, _START_DELAY, _RESOLUTION, _SMOOTHING);
  sf[1].setAll(pin2, MIN_2, MAX_2, _START_DELAY, _RESOLUTION, _SMOOTHING);
  sf[2].setAll(pin3, MIN_3, MAX_3, _START_DELAY, _RESOLUTION, _SMOOTHING);
  sf[3].setAll(pin4, MIN_4, MAX_4, _START_DELAY, _RESOLUTION, _SMOOTHING);
  sf[4].setAll(pin5, MIN_5, MAX_5, _START_DELAY, _RESOLUTION, _SMOOTHING);

  Serial.println("INIZIALIZZO LA MANO --> HOMING");
  for (int i = 0; i < NUM_FINGERS_; i++) {
    sf[i].attachServo();
  }
  delay(500);
  homing();
 interrupts();
  digitalWrite(en_comunication, LOW);
}

void loop() {

  //////////////////
  if(isMoving == 0) {
  if(test_case) {
    test();
  } else {
    test1();
  }
  }
  
  if (is_setup == 1) {
    t_offset = millis(); //Viene salvato il tempo assoluto attuale
    
    if(isRelative == 0) { //Le movimentazioni possono essere inviate in coordinate realitve o assolute
      for (int i = 0; i < NUM_FINGERS_; i++)
      {
        angles[i] = home_angles[i] + (percentAngles[i]*(max_angles[i]-home_angles[i]))/100;
        //Serial.print("ANGOLO:");
        //Serial.println(angles[i]);
      }
    } else {
      for (int i = 0; i < NUM_FINGERS_; i++)
      {
        angles[i] = angles[i] + (long int)((percentAngles[i]*(max_angles[i]-home_angles[i]))/100.0); //Relative
      }
    }

    setAngles(angles,totalTime); // Settaggio dei parametri di ogni motore in base al moto da eseguire
    digitalWrite(triggerPin, HIGH); //Da questo momento arduino non può rivere comandi via i2c dall'esterno
    isMoving = 1; //Trigger di movimentazione avviata alzato
    is_setup = 0; // setup movimentazione finito
    while(millis -t_offset < offsetTime) {
        //Attendo il tempo rimanente
    }
    for (int i = 0; i < NUM_FINGERS_; i++) {
      t[i] = millis(); //Salvo il tempo assoluto attuale per ogni servomotore
    }
  }
  if (isMoving == 1) {
    if (_runToPosition() == 0) { // Il movimento ora viene eseguito con i tempi preimpostati, quando il movimento finisce si verifica runToPosition() = 0
      //Serial.println("Movimento finito");
      digitalWrite(triggerPin,LOW); //Il movimento è finito e arduino può ricevere comandi via i2c dall'esterno
      test_case = !test_case;
    }
  } 

}

void homing() {
  writeFingers(home_angles);
}

void attachHand() {
  for (int i = 0; i < NUM_FINGERS_; i++) {
    sf[i].attachServo();
  }
}

void setAngles(long int _angles[], int totalTime) { //Il movimento viene pianificato
  for (int i = 0; i < NUM_FINGERS_; i++) {
    //Serial.println("Finger " + String(i) + "--------------");
    sf[i].setAngle(_angles[i]);
    //Serial.println("Angle = " + String(_angles[i]));
    deltaAngle[i] = abs(sf[i].getAngle() - sf[i].getPreviousAngle());
    //Serial.println("dAngle = " + String(deltaAngle[i]));
    iterations[i] = sf[i].getTotalIterations(_angles[i], sf[i].getPreviousAngle()); //Viene calcolato il numero di passi da eseguire per completare il movimento
    //Serial.println("Iter = " + String(iterations[i]));
  }
  int maxTime = getMax(iterations) * _START_DELAY; // Calcolo il tempo che impiega il servo più lento alla massima velocità
  if(totalTime > maxTime) { //Se il tempo totale imposto è maggiore del tempo minimo di movimentazione allor il tempo totae sarà quello imposto
    maxTime = totalTime;
  }
  
  for (int i = 0; i < NUM_FINGERS_; i++) {
    int act_delay = 0;
    if (iterations[i] != 0) {
      //Serial.println(String(maxTime) + "/" + String(iterations[i]));
      act_delay = max(_START_DELAY, round((float) maxTime / iterations[i])); //calcolo il tempo tra un passo e l'altro come tempo totale / numero di passi
    } else {
      act_delay = _START_DELAY;
    }
    sf[i].setDelay(act_delay);
    //Serial.println("Delay = " + String(act_delay));
  }
}

int _runToPosition() {
  int a = 0;
  for (int i = 0; i < NUM_FINGERS_; i++) {
    if (sf[i].getIsMoving() == 1) {
      if (sf[i].run( & t[i]) == 1) {
        a++;
        //Serial.println(a);
      }
    }
  }
  if (a == 0) {
    isMoving = 0;
  } else {
    isMoving = 1;
  }
  return isMoving;

}
void writeFingers(long int _angles[]) {
  int defaultTime = 1000;
  setAngles(_angles, defaultTime);
  for (int i = 0; i < NUM_FINGERS_; i++) {
    sf[i].writeAngle(_angles[i]);
  }
}

void writeFingers(long int _angles[],int moveTime) {
  setAngles(_angles, moveTime);
  for (int i = 0; i < NUM_FINGERS_; i++) {
    sf[i].writeAngle(_angles[i]);
  }
}

int getMax(int a[]) {
  int _max = 0;
  for (int i = 0; i < NUM_FINGERS_; i++) {
    _max = max(a[i], _max);
  }
  return _max;
}

//------funzioni per i2c ------
byte data_to_echo = 0;

void receiveData(int bytecount) {
  for (int i = 0; i < bytecount; i++) {
    data[i] = Wire.read();   
  }
  isRelative = data[0];
  totalTime =(((int16_t) data[1]) << 8 | data[2]);
  offsetTime =(((int16_t) data[3]) << 8 | data[4]);
  for (int i = 5; i < _DATA_BYTES; i++) {
   percentAngles[i-5] = data[i];
  }
  is_setup = 1;
}

void test() {
  
    isRelative = 0;
  totalTime = 600;
  offsetTime = 0;
  for (int i = 0; i < 5; i++) {
    int p_ang = 10;
   if(i == 0) {
    p_ang = 100 - p_ang;
   }
   percentAngles[i] = p_ang;
  }
  is_setup = 1;
  }
  
  
  
void test1() {
      isRelative = 0;
  totalTime = 600;
  offsetTime = 0;
  for (int i = 0; i < 5; i++) {
   int p_ang = 90;
   if(i == 0) {
    p_ang = 100 - p_ang;
   }
   percentAngles[i] = p_ang;
  }
  is_setup = 1;
}
