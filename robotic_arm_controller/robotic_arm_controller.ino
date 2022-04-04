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
#define pinEnSpalla1 2

//define pin drier gestione motore 2 spalla
#define pinDirSpalla2 3
#define pinStepSpalla2 4
#define pinEnSpalla2 5

//define pin driver gestione motore gomito
#define pinDirGomito 6
#define pinStepGomito 7
#define pinEnGomito 8

//define ingressi per sensori funzioni di homing del braccio
#define fcSpalla1 9
#define fcSpalla2 10
#define fcGomito 11

//define pin enable per comunicazione i2c e definizione dei pin utilizzati per tale comunicazione
#define triggerPin 33
// define sda 18
// define scl 19

Motor spalla1(2500, 10000, 320, pinStepSpalla1,pinDirSpalla1);
Motor spalla2(2500, 10000, 320, pinStepSpalla2,pinDirSpalla2);
Motor gomito(2500, 10000, 320, pinStepGomito,pinDirGomito);


int is_setup = 0;
int isMoving = 0;
int isRelative = 0;

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
  digitalWrite(pinEnSpalla1,0);
  digitalWrite(pinEnSpalla2,0);
  digitalWrite(pinEnGomito,0);
  Serial.begin(9600);
  Serial.println("inizializzazione");

  //funzioni di homing chiamate per ogni asse del braccio 
  //homing(fcSpalla1,pinStepSpalla1,pinDirSpalla1,true,1000);
  //homing(fcSpalla2,pinStepSpalla2,pinDirSpalla2,true,1000);
  //homing(fcGomito,pinStepGomito,pinDirGomito,true,1000);

  //Wire.begin(22);
  //Wire.onReceive(receiveData);
  
}

long long unsigned int times;
unsigned int index_;
unsigned int disp;
unsigned int passi=2560*2;
bool move_s1=false, move_s2=false, move_g=false;


unsigned int offsetTime = 0;


void loop(){

  /*
  if (is_setup == 1) {
    t_offset = millis(); //Viene salvato il tempo assoluto attuale
    
    if(isRelative == 0) { //Le movimentazioni possono essere inviate in coordinate realitve o assolute
      //settaggio set up 
      //spalla1.set_up(passi,3);
      //spalla2.set_up(passi,3);
      //gomito.set_up(passi,3);
    } else {
      //settaggio set up 
      //spalla1.set_up(passi,3);
      //spalla2.set_up(passi,3);
      //gomito.set_up(passi,3);
    }
    digitalWrite(triggerPin, HIGH); //Da questo momento arduino non può rivere comandi via i2c dall'esterno
    isMoving = 1; //Trigger di movimentazione avviata alzato
    is_setup = 0; // setup movimentazione finito
    while(millis -t_offset < offsetTime) {
        //Attendo il tempo rimanente
    }
  }
  */
  
 passi=-passi;
 Serial.println("partito");
 Serial.println(millis()/1000.0);
 spalla1.set_up(passi,3);
 spalla2.set_up(passi,3);
 //gomito.set_up(passi,3);
 
 //ciclo di movimentazione
 // while(!(move_s1 && move_s2 && move_g)){
 while(!(move_s1 && move_s2 )){
   move_s1 = spalla1.run();
   move_s2 = spalla2.run();
   //move_g = gomito.run();
 }
 //reset delle variabili del movimento 
 move_s1 = false;
 move_s2 = false;
 move_g = false;
 
 Serial.println(millis()/1000.0);
 Serial.println("finito");
 delay(2000);
}

//funzione per l'homig del braccio
void homing(int sensore, int steps,int directions,bool start_dir,int passi){
  /*
   * int sensore    -> pin corrispettivo al motore per il quale si desidera fare homing
   * int steps      -> pin per comandare il DVR8825 con i passi da svolgere
   * int direction  -> pin per settare la direzione del DVR8825 per fare l'homing
   * bool start_dir -> 1 / 0 per scegliere la direzione con cui partire per la fase di homing
   * int passi      -> numero di passi dasvolgere per l'allontanamento dal sensore
  */
  digitalWrite(directions,start_dir);
  bool a = false;
  // primo ciclo di homing per trovare il sensore
  while(a == false) {
    digitalWrite(steps, HIGH);
    delay(1);
    digitalWrite(steps, LOW);
    delay(1);
    if(digitalRead(sensore) == LOW) {
      a = true;
    }
  }
  
  delay(10);
  digitalWrite(directions,!digitalRead(directions));
  
  // mi allontano dal sensore per avere una miglio precisione di posizionamento
  while(passi>0) {
    digitalWrite(steps, HIGH);
    delay(1);
    digitalWrite(steps, LOW);
    delay(1);
    passi = passi-1;
  }
  
  delay(10) ;
  digitalWrite(directions,!digitalRead(directions));
  a = false;
  
  //mi riavvicino al sensore a una velocità inferiore per avere un miglior posizionamento di homing
  while(a == false) {
    digitalWrite(steps, HIGH);
    delay(5);
    digitalWrite(steps, LOW);
    delay(5);
    if(digitalRead(sensore) == LOW) {
      a = true;
    }
  }
  
}



//------funzioni per i2c ------
/*
 * da sistemare una volta deciso protocollo e correggere bytes di lettura
 * #define _DATA_BYTES 10 //Numero di byte che vengono trasferiti via i2c

unsigned int passi_sp1 = 0;
unsigned int passi_sp2 = 0;
unsigned int passi_gomito = 0;

void receiveData(int bytecount) {
  for (int i = 0; i < bytecount; i++) {
    data[i] = Wire.read();   
  }
  isRelative = data[0];
  time =(((int16_t) data[1]) << 8 | data[2]);
  offsetTime =(((int16_t) data[3]) << 8 | data[4]);
  passi_sp1 = data[5];
  passi_sp2 = data[6];
  passi_gomito = data[7];
  is_setup = 1;
}
*/
