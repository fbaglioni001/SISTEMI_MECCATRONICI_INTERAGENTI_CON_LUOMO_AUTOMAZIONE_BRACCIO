/*********************************************************************************************************
  BRACCIO ROBOTICO COMANDATO DA ROS
  PROGRAMMA CONTROLLO POLSO A 2 GRADI DI LIBERTA'
  mediante utilizzo arduino micro
  Authors: Baglioni Francesco (f.baglioni001@studenti.unibs.it )
          Campregher Francesco (f.campregher@studenti.unibs.it)
          Mirandola Edoardo (e.mirandola@studenti.unibs.it)
  A.A. 2021/22
  REPO: https://github.com/fbaglioni001/SISTEMI_MECCATRONICI_INTERAGENTI_CON_LUOMO_AUTOMAZIONE_BRACCIO.git
**********************************************************************************************************/

//#include "ServoHand.h"
#include <Wire.h>
#include "ServoFinger.h"
// DEFINIZIONE PIN SERVO ARDUINO MICRO
// pin D3 18 SCL
// pin D2 19 SDA

#define _DATA_BYTES 7
#define NUM_WRIST_ 2

#define MAX_1 175000  //1: polso1
#define MIN_1 1
#define MAX_2 175000 //2: polso2
#define MIN_2 1

#define _SMOOTHING 70
#define _RESOLUTION 300

// DEFINIZIONE PIN SERVO
#define pin1 9
#define pin2 10
#define en_comunication 2 //enable i2c impostato a 1 per non scrittura

//DEFINIZIONE VELOCITA' SERVO
#define _START_DELAY 10

String comando = "";
long unsigned int t[NUM_WRIST_];
long unsigned int t_offset = 0;
String dato = "";
int is_setup = 0;
int index = 0;
int isMoving = 0;
int isRelative = 0;
unsigned int offsetTime = 0;
unsigned int totalTime = 0;
//VARIABILI MANO:
const long int home_angles[] = {
  MIN_1,
  MIN_2,
};
const long int max_angles[] = {
  MAX_1,
  MAX_2,
};
long int angles[NUM_WRIST_];
int percentAngles[NUM_WRIST_];
long int deltaAngle[NUM_WRIST_];
int iterations[NUM_WRIST_];
ServoFinger sf[NUM_WRIST_];

//----------- Variabili i2c -------------
unsigned int triggerPin = en_comunication;
int data[_DATA_BYTES];

void setup() {
  pinMode(en_comunication, OUTPUT);
  digitalWrite(en_comunication, HIGH);
  noInterrupts();

  Serial.begin(9600);
  while (!Serial)
  Wire.begin(42);
  Wire.onReceive(receiveData);
  for (int i = 0; i < NUM_WRIST_; i++) {
      sf[i] = ServoFinger();
    }
    sf[0].setAll(pin1, MIN_1, MAX_1, _START_DELAY, _RESOLUTION, _SMOOTHING);
    sf[1].setAll(pin2, MIN_2, MAX_2, _START_DELAY, _RESOLUTION, _SMOOTHING);

    Serial.println("INIZIALIZZO LA MANO --> HOMING");
    for (int i = 0; i < NUM_WRIST_; i++) {
      sf[i].attachServo();
    }
    homing();
  interrupts();
  digitalWrite(en_comunication, LOW);
}

void loop() {
  if (is_setup == 1) {
    t_offset = millis();
    if(isRelative == 0) {
      for (int i = 0; i < NUM_WRIST_; i++)
      {
        angles[i] = home_angles[i] + (percentAngles[i]*(max_angles[i]-home_angles[i]))/100;
        Serial.print("ANGOLO:");
        Serial.println(angles[i]);
      }
    } else {
      for (int i = 0; i < NUM_WRIST_; i++)
      {
        angles[i] = angles[i] + (percentAngles[i]*(max_angles[i]-home_angles[i]))/100;
      }
    }

    setAngles(angles,totalTime);
    digitalWrite(triggerPin, HIGH);
    isMoving = 1;
    is_setup = 0;
//    while(millis -t_offset < offsetTime) {
//
//    }
    for (int i = 0; i < NUM_WRIST_; i++) {
      t[i] = millis();
    }
  }
  if (isMoving == 1) {
    if (runToPosition() == 0) {
      Serial.println("Movimento finito");
      digitalWrite(triggerPin,LOW);
    }
  }
}

void homing() {
  writeFingers(home_angles);
}


void attachHand() {
  for (int i = 0; i < NUM_WRIST_; i++) {
    sf[i].attachServo();
  }
}

void setAngles(long int _angles[], int totalTime) {
  for (int i = 0; i < NUM_WRIST_; i++) {
    Serial.println("Finger " + String(i) + "--------------");
    sf[i].setAngle(_angles[i]);
    Serial.println("Angle = " + String(_angles[i]));
    deltaAngle[i] = abs(sf[i].getAngle() - sf[i].getPreviousAngle());
    Serial.println("dAngle = " + String(deltaAngle[i]));
    iterations[i] = sf[i].getTotalIterations(_angles[i], sf[i].getPreviousAngle());
    Serial.println("Iter = " + String(iterations[i]));
  }
  int maxTime = getMax(iterations) * _START_DELAY;
  if(totalTime > maxTime) {
    maxTime = totalTime;
  }
  for (int i = 0; i < NUM_WRIST_; i++) {
    int act_delay = 0;
    if (iterations[i] != 0) {
      Serial.println(String(maxTime) + "/" + String(iterations[i]));
      act_delay = max(_START_DELAY, round((float) maxTime / iterations[i]));
    } else {
      act_delay = _START_DELAY;
    }
    sf[i].setDelay(act_delay);
    Serial.println("Delay = " + String(act_delay));
  }
}

int runToPosition() {
  int a = 0;
  for (int i = 0; i < NUM_WRIST_; i++) {
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
  for (int i = 0; i < NUM_WRIST_; i++) {
    sf[i].writeAngle(_angles[i]);
  }
}

void writeFingers(long int _angles[],int moveTime) {
  setAngles(_angles, moveTime);
  for (int i = 0; i < NUM_WRIST_; i++) {
    sf[i].writeAngle(_angles[i]);
  }
}

int getMax(int a[]) {
  int _max = 0;
  for (int i = 0; i < NUM_WRIST_; i++) {
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
  totalTime =(((int16_t) data[1]) << 8 | data[2])*2;
  offsetTime =(((int16_t) data[3]) << 8 | data[4]);
  for (int i = 5; i < _DATA_BYTES; i++) {
   percentAngles[i-5] = data[i];
    Serial.print("Percent ");
  Serial.println(i-5);
   Serial.print(" : ");
  Serial.println(percentAngles[i-5]);
  }
  is_setup = 1;
  Serial.print("ISRELATIVE: ");
  Serial.println(isRelative);
   Serial.print("TotalTime: ");
  Serial.println(totalTime);
   Serial.print("offsetTime: ");
  Serial.println(offsetTime);
  
}
