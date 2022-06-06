/*********************************************************************************************************
  BRACCIO ROBOTICO COMANDATO DA ROS
  PROGRAMMA CONTROLLO BRACCIO
  mediante l'utilizzo tensy 4.1 e driver DVR8825
  Authors: Baglioni Francesco (f.baglioni001@studenti.unibs.it )
           Campregher Francesco (f.campregher@studenti.unibs.it)
           Mirandola Edoardo (e.mirandola@studenti.unibs.it)
  A.A. 2021/22

  REPO: https://github.com/fbaglioni001/SISTEMI_MECCATRONICI_INTERAGENTI_CON_LUOMO_AUTOMAZIONE_BRACCIO.git
**********************************************************************************************************/

#include "law.h"
#include <Arduino.h>
#include "Wire.h"

// define rapporti di riduzione
#define stepPerGradoSpalla1 15.2595156
#define stepPerGradoSpalla2 15.2595156
#define stepPerGradoGomito 71.1111111

// define pin driver gestione motore 1 spalla
#define pinDirSpalla1 4
#define pinStepSpalla1 16
#define pinEnSpalla1 17

// define pin drier gestione motore 2 spalla
#define pinDirSpalla2 15
#define pinStepSpalla2 2
#define pinEnSpalla2 0

// define pin driver gestione motore gomito
#define pinDirGomito 5
#define pinStepGomito 18
#define pinEnGomito 19

// define ingressi per sensori funzioni di homing del braccio
#define fcSpalla1 25
#define fcSpalla2 33
#define fcGomito 26

#define I2C_DEV_ADDR 44

// define pin enable per comunicazione i2c e definizione dei pin utilizzati per tale comunicazione
#define triggerPin 32
//#define sda 21
//#define scl 22 //guardando dalla porta della

Motor spalla1(2500, 10000, 320, pinStepSpalla1, pinDirSpalla1);
Motor spalla2(2500, 10000, 320, pinStepSpalla2, pinDirSpalla2);
Motor gomito(2500, 10000, 320, pinStepGomito, pinDirGomito);

float angleSpalla1 = 80, angleSpalla2 = 45, angleGomito = -50;

unsigned int totalTime = 5000;
int is_setup = 0;
int isMoving = 0;
int isRelative = 0;
int passi_sp1 = 0;
int passi_sp2 = 0;
int passi_gomito = 0;
int caso = 0;
unsigned int index_;
unsigned int disp;
unsigned int passi = 2560 * 2;
bool move_s1 = false, move_s2 = false, move_g = false;

unsigned int offsetTime = 0;
void receiveData(int bytecount);

void homing(int sensore, int steps, int directions, bool start_dir, int passi, int vsteps1, int vsteps2, int vsteps3){
  /*
   * int sensore    -> pin corrispettivo al motore per il quale si desidera fare homing
   * int steps      -> pin per comandare il DVR8825 con i passi da svolgere
   * int direction  -> pin per settare la direzione del DVR8825 per fare l'homing
   * bool start_dir -> 1 / 0 per scegliere la direzione con cui partire per la fase di homing
   * int passi      -> numero di passi dasvolgere per l'allontanamento dal sensore
   * int vsteps1    -> velocità dei passi per avvicinamento al sensore 1°ciclo
   * int vsteps1    -> velocità dei passi per allontanamento al sensore
   * int vsteps1    -> velocità dei passi per avvicinamento al sensore 2°ciclo
   */

  digitalWrite(directions, start_dir);
  bool a = false;
  int iter = 0;
  // primo ciclo di homing per trovare il sensore

  //  while(a == false) {
  //   if(digitalRead(sensore) == LOW) {
  //     a = true;
  //   }}
  //   delay(150);
  a = false;
  while (a == false)
  {
    digitalWrite(steps, HIGH);
    delay(vsteps1);
    digitalWrite(steps, LOW);
    delay(vsteps1);
    iter++;
    if (digitalRead(sensore) == LOW)
    {
      a = true;
    }
  }

  delay(200);
  digitalWrite(directions, !digitalRead(directions));

  // mi allontano dal sensore per avere una miglio precisione di posizionamento
  while (passi > 0)
  {
    digitalWrite(steps, HIGH);
    delay(vsteps2);
    digitalWrite(steps, LOW);
    delay(vsteps2);
    passi = passi - 1;
  }
  iter = iter - passi;
  delay(200);
  digitalWrite(directions, !digitalRead(directions));
  a = false;

  // mi riavvicino al sensore a una velocità inferiore per avere un miglior posizionamento di homing
  while (a == false)
  {
    digitalWrite(steps, HIGH);
    delay(vsteps3);
    digitalWrite(steps, LOW);
    delay(vsteps3);
    iter++;
    if (digitalRead(sensore) == LOW)
    {
      a = true;
    }
  }
  Serial.println(iter);
  
}

void setup(){
  pinMode(fcSpalla1, INPUT);
  pinMode(fcSpalla2, INPUT);
  pinMode(fcGomito, INPUT);

  pinMode(pinEnSpalla1, OUTPUT);
  pinMode(pinEnSpalla2, OUTPUT);
  pinMode(pinEnGomito, OUTPUT);

  pinMode(pinStepSpalla1, OUTPUT);
  pinMode(pinStepSpalla2, OUTPUT);
  pinMode(pinStepGomito, OUTPUT);

  pinMode(pinDirSpalla1, OUTPUT);
  pinMode(pinDirSpalla2, OUTPUT);
  pinMode(pinDirGomito, OUTPUT);
  digitalWrite(pinEnSpalla1, 0);
  digitalWrite(pinEnSpalla2, 0);
  digitalWrite(pinEnGomito, 0);
  
  Serial.begin(9600);
  Serial.println("inizializzazione");
  Wire.onReceive(receiveData);
  Wire.begin((uint8_t)I2C_DEV_ADDR);
  noInterrupts();

  // funzioni di homing chiamate per ogni asse del braccio
  // homing asse3

  homing(fcGomito, pinStepGomito, pinDirGomito, true, 500, 1, 1, 5);

  // posizonamento asse 3 e asse 1 per foming asse 2
  unsigned int passis = 500;
  digitalWrite(pinDirGomito, !digitalRead(pinDirGomito));
  while (passis > 0)
  {
    digitalWrite(pinStepGomito, HIGH);
    delay(2);
    digitalWrite(pinStepGomito, LOW);
    delay(2);
    passis = passis - 1;
  }
  // homing asse1
  homing(fcSpalla1, pinStepSpalla1, pinDirSpalla1, false, 200, 2, 5, 15);

  // posizionamneto per homing asse 3
  passis = 2400;
  digitalWrite(pinDirSpalla1, !digitalRead(pinDirSpalla1));
  while (passis > 0)
  {
    digitalWrite(pinStepSpalla1, HIGH);
    delay(1);
    digitalWrite(pinStepSpalla1, LOW);
    delay(1);
    passis = passis - 1;
  }

  // homing asse2
  homing(fcSpalla2, pinStepSpalla2, pinDirSpalla2, false, 250, 4, 8, 15);
  
  passis = 700;
  digitalWrite(pinDirSpalla2, !digitalRead(pinDirSpalla2));
  while (passis > 0)
  {
    digitalWrite(pinStepSpalla2, HIGH);
    delay(2);
    digitalWrite(pinStepSpalla2, LOW);
    delay(2);
    passis = passis - 1;
  }
}


int angle2step(float angle, int axis)
{

  if (axis == 1)
  {
    return (int)angle * stepPerGradoSpalla1;
  }
  else if (axis == 2)
  {
    return (int)angle * stepPerGradoSpalla2;
  }
  else if (axis == 3)
  {
    return (int)angle * stepPerGradoGomito;
  }
}

void loop()
{
  if (is_setup == 1)
  {
    unsigned long int t_offset = millis(); // Viene salvato il tempo assoluto attuale
    // if(isRelative == 0) { //Le movimentazioni possono essere inviate in coordinate realitve o assolute
    // settaggio set up
    //  switch(caso) {
    //    case 0:
    //    angleSpalla1 = 80;
    //    angleSpalla2 = 40;
    //    angleGomito = -50;
    //   break;
    //   case 1:
    //    angleSpalla1 = -110;
    //    angleSpalla2 = -20;
    //    angleGomito = 25;
    //    break;
    //    case 2:
    //    angleSpalla1 = 30;
    //    angleSpalla2 = -20;
    //    angleGomito = 25;
    //    break;
    //  }

    // caso++;
    // if(caso > 2) {
    //   caso = 0;
    // }

    spalla1.set_up(passi_sp1, totalTime);
    spalla2.set_up(passi_sp2, totalTime);
    gomito.set_up(passi_gomito, totalTime);
    digitalWrite(triggerPin, HIGH); // Da questo momento arduino non può rivere comandi via i2c dall'esterno
    is_setup = 0;                   // setup movimentazione finito
<<<<<<< Updated upstream
    
=======
>>>>>>> Stashed changes
    while (millis() - t_offset < offsetTime)
    {
      //     //Attendo il tempo rimanente
    }
    
    Serial.println("partito");
    Serial.println(millis() / 1000.0);

    // ciclo di movimentazione
    while (!(move_s1 && move_s2 && move_g))
    {
      move_s1 = spalla1.run();
      move_s2 = spalla2.run();
      move_g = gomito.run();
    }
    Serial.println(millis() / 1000.0);
    Serial.println("finito"); 
    // reset delle variabili del movimento
    move_s1 = false;
    move_s2 = false;
    move_g = false;
    is_setup = 0;
    digitalWrite(triggerPin, LOW);
  }

  
}

// funzione per l'homig del braccio

//------funzioni per i2c ------

// da sistemare una volta deciso protocollo e correggere bytes di lettura
#define _DATA_BYTES 11 // Numero di byte che vengono trasferiti via i2c



void receiveData(int bytecount)
{
  byte data[_DATA_BYTES];
  for (int i = 0; i < bytecount; i++)
  {
    data[i] = Wire.read();
  }
  isRelative = data[0];
  totalTime = (((int16_t)data[1]) << 8 | data[2]);
  offsetTime = (((int16_t)data[3]) << 8 | data[4]);
  passi_sp1 = (((int16_t)data[5]) << 8 | data[6]);
  passi_sp2 = (((int16_t)data[7]) << 8 | data[8]);
  passi_gomito = (((int16_t)data[9]) << 8 | data[10]);
  is_setup = 1;
}
