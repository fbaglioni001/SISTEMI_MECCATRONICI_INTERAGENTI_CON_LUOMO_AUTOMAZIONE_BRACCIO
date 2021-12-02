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

#include "ServoHand.h"
#include <Wire.h>

// DEFINIZIONE PIN SERVO ARDUINO MICRO
// pin D3 18 SCL
// pin D2 19 SDA

#define _DATA_BYTES 10
#define NUM_WRIST_ 2

#define MAX_1 157000  //1: polso1
#define MIN_1 62000
#define MAX_2 125000 //2: polso2
#define MIN_2 17000

#define _SMOOTHING 70
#define _RESOLUTION 300

// DEFINIZIONE PIN SERVO
#define pin1 11
#define pin2 10
#define en_comunication 2 //enable i2c impostato a 1 per non scrittura

//DEFINIZIONE VELOCITA' SERVO
#define _START_DELAY 10

String comando = "";
long unsigned int t[NUM_WRIST];
long unsigned int t_offset = 0;
String dato = "";
int is_setup = 0;
int index = 0;
int isMoving = 0;
int isRelative = 0;
uint offsetTime = 0;
uint totalTime = 0;
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
int percentAngles[NUM_WRIST];
long int deltaAngle[NUM_WRIST];
int iterations[NUM_WRIST];
ServoFinger sf[NUM_WRIST];

//----------- Variabili i2c -------------
unsigned int triggerPin = en_comunication;
int data[_DATA_BYTES];

void setup() {
  pinMode(en_comunication, OUTPUT);
  digitalWrite(en_comunication, HIGH);
  noInterrupts();

  Serial.begin(9600);
  Wire.begin(42);
  Wire.onReceive(receiveData);

  Interrupts();
  digitalWrite(en_comunication, LOW);
}

void loop() {
  if (is_setup == 1) {
    setAngles(angles);
    digitalWrite(triggerPin, HIGH);
    noInterrupts();
    
    //code
  }


  if (isMoving == 1) {
    if (runToPosition() == 0) {
      
      interrupts();
      digitalWrite(triggerPin,LOW);
    }
  }
}

// function i2c-------------------------------------------------------------------
void receiveData(int bytecount)
{
  digitalWrite(en_comunication, HIGH);
  for (int i = 0; i < bytecount; i++) {
    angles[i] = Wire.read();
    angles[i] *= 1000;
    Serial.println(angles[i]);
    is_setup = 1;
  }
}
