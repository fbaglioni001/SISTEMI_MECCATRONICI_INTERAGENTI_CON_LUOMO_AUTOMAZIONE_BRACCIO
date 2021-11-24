/*********************************************************************************
  BRACCIO ROBOTICO COMANDATO DA ROS
  PROGRAMMA CONTROLLO BRACCIO A 3 GRADI DI LIBERTA'
  mediante utilizzo tensy 4.1 e driver Tmc2208 V3.0
  Authors: Baglioni Francesco (f.baglioni001@studenti.unibs.it )
          Campregher Francesco (f.campregher@studenti.unibs.it)
          Mirandola Edoardo (e.mirandola@studenti.unibs.it)
  A.A. 2021/22

  REPO: https://github.com/fbaglioni001/SISTEMI_MECCATRONICI_INTERAGENTI_CON_LUOMO_AUTOMAZIONE_BRACCIO.git
 ********************************************************************************/

#include <Wire.h>
#include <Stepper.h>

#define NUM_JOINTS_ 3 // numero giunti del braccio

//Definire passi minimi e massimi per ogni giunto.
#define MAX_1 1  //1: spalla1
#define MIN_1 1

#define MAX_2 1 //2: spalla2
#define MIN_2 1

#define MAX_3 1 //3:gomito
#define MIN_3 1

// DEFINIZIONE PIN STEPPER TENSY

// Wire : Pin 19/A5 is SCL0, pin 18/A4 is SDA0;
// Wire1: Pin 16/A2 is SCL1, pin 17/A3 is SDA1;
// Wire2: Pad (underneath the Teensy) 24/A10 is SCL2, and pad 25/A11 is SDA2.

#define en1 1 // enable driver spalla1
#define en2 2 // enable driver spalla2 
#define en3 3 // enable driver gomito
#define en_comunication 2 //enable i2c impostato a 1 per non scrittura

#define pin1 11
#define pin2 10
#define pin3 9

long int steps[NUM_JOINTS_];

void setup() {
  pinMode(en_comunication, OUTPUT);
  digitalWrite(en_comunication, HIGH);

  pinMode(en1, OUTPUT);
  pinMode(en2, OUTPUT);
  pinMode(en3, OUTPUT);

  Serial.begin(9600);
  Wire.begin(32);
  Wire.onReceive(receiveData);

  digitalWrite(en_comunication, LOW);
}

void loop() {
}

// function i2c-------------------------------------------------------------------
void receiveData(int bytecount)
{
  digitalWrite(en_comunication, HIGH);
  for (int i = 0; i < bytecount; i++) {
    steps[i] = Wire.read();
    Serial.println(steps[i]);
  }
}
