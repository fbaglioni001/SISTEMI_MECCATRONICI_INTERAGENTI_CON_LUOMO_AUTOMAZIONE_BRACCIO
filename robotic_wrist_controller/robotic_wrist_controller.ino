/*********************************************************************************
  BRACCIO ROBOTICO COMANDATO DA ROS
  PROGRAMMA CONTROLLO POLSO A 2 GRADI DI LIBERTA'
  mediante utilizzo arduino micro
  Authors: Baglioni Francesco (f.baglioni001@studenti.unibs.it )
          Campregher Francesco (f.campregher@studenti.unibs.it)
          Mirandola Edoardo (e.mirandola@studenti.unibs.it)
  A.A. 2021/22
  REPO: https://github.com/fbaglioni001/SISTEMI_MECCATRONICI_INTERAGENTI_CON_LUOMO_AUTOMAZIONE_BRACCIO.git
 ********************************************************************************/

#include <Wire.h>

#define NUM_WRIST_ 2 // definire numero giunti del polso
//Definire angoli minimi e massimi per movimenti polso.
#define MAX_1 157000  //1: polso1
#define MIN_1 62000

#define MAX_2 125000 //2: polso2
#define MIN_2 17000

// DEFINIZIONE PIN SERVO ARDUINO MICRO
// pin D3 18 SCL
// pin D2 19 SDA

#define pin1 11
#define pin2 10
#define en_comunication 2 //enable i2c impostato a 1 per non scrittura
long int angles[NUM_WRIST_];

void setup() {
  pinMode(en_comunication, OUTPUT);
  digitalWrite(en_comunication, HIGH);

  Serial.begin(9600);
  Wire.begin(42);
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
    angles[i] = Wire.read();
    angles[i] *= 1000;
    Serial.println(angles[i]);
  }
}
