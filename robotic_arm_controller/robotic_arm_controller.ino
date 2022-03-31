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

//define pin driver gestione motore 1 spalla
#define pinDirSpalla1 0
#define pinStepSpalla1 1
#define pinEnSpalla1 4

//define pin drier gestione motore 2 spalla
#define pinDirSpalla2 5 
#define pinStepSpalla2 6
#define pinEnSpalla2 7

//define pin driver gestione motore gomito
#define pinDirGomito 8
#define pinStepGomito 9
#define pinEnGomito 10 

//define ingressi per sensori funzioni di homing del braccio
#define fcSpalla1 11
#define fcSpalla2 12
#define fcGomito 13

//define pin enable per comunicazione i2c e definizione dei pin utilizzati per tale comunicazione
#define i2c 14
// define sda 18
// define scl 19

Motor spalla(2500, 10000, 155,1,2);
Motor secondo(2500, 10000, 155,4,5);

void setup(){
  pinMode(fcSpalla1, INPUT_PULLDOWN);
  pinMode(fcSpalla2, INPUT_PULLDOWN);
  pinMode(fcGomito, INPUT_PULLDOWN);

  pinMode(pinEnSpalla1,OUTPUT);
  pinMode(pinEnSpalla2,OUTPUT);
  pinMode(pinEnGomito,OUTPUT);
  
  pinMode(pinStepSpalla1,OUTPUT);
  pinMode(pinStepSpalla2,OUTPUT);
  pinMode(pinStepGomito,OUTPUT);
  
  pinMode(pinDirSpalla1,OUTPUT);
  pinMode(pinDirSpalla2,OUTPUT);
  pinMode(pinDirGomito,OUTPUT);

  Serial.begin(9600);
  Serial.println("inizializzazione");
  
}

long long unsigned int times;
unsigned int index_;
unsigned int disp;
unsigned int passi=0;
bool sp=false,sec=false;
void loop(){
   

 passi+=10;
 Serial.println("partito");
 Serial.println(millis()/1000.0);
 Serial.println(spalla.set_up(100,1));
 Serial.println(secondo.set_up(2500,1));
  while(!(sp && sec)){
    sp=spalla.run();
    sec=secondo.run();
  }
 sp=false;
 sec=false;
 Serial.println(millis()/1000.0);
 Serial.println("finito");
 delay(2000);
}
