#include "ServoHand.h"
#define NUM_FINGERS_ 5
#define MAX_1 157000 //Definire gli angoli minimi per ogni dito. 
#define MIN_1 62000 //1: POLLICE
#define MAX_2 60000
#define MIN_2 10000 //2: INDICE
#define MAX_3 60000
#define MIN_3 10000 //3:MEDIO
#define MAX_4 60000 
#define MIN_4 10000 //4:ANULARE
#define MAX_5 60000
#define MIN_5 10000 //5:MIGNOLO
#define _SMOOTHING 100
#define _RESOLUTION 280
// DEFINIZIONE PIN SERVO
#define pin1 11
#define pin2 10
#define pin3 9
#define pin4 6
#define pin5 5
//DEFINIZIONE VELOCITA' SERVO
#define _START_DELAY 10

String comando = "";
long int t = 0;
String dato ="";
int firstStart =1;
int index = 0;

//VARIABILI MANO:
const long int home_angles[] = {MIN_1,MIN_2,MIN_3,MIN_4,MIN_5};
long int angles[NUM_FINGERS_];
long int deltaAngle[NUM_FINGERS_];
int iterations[NUM_FINGERS_];

//ServoFinger(int _pin, int _minAngle, int _maxAngle, unsigned int _delayMillis,int _resolution, int _smoothing);
ServoFinger sf[NUM_FINGERS_];
ServoHand hand(NUM_FINGERS_);

//ServoHand(ServoFinger _sf[],int n);
void setup() {
  Serial.begin(9600);
   for(int i = 0; i<NUM_FINGERS_;i++) {
  sf[i] = ServoFinger();
}
sf[0].setAll(pin1,MIN_1,MAX_1,_START_DELAY,_RESOLUTION,_SMOOTHING);
sf[1].setAll(pin2,MIN_2,MAX_2,_START_DELAY,_RESOLUTION,_SMOOTHING);
sf[2].setAll(pin3,MIN_3,MAX_3,_START_DELAY,_RESOLUTION,_SMOOTHING);
sf[3].setAll(pin4,MIN_4,MAX_4,_START_DELAY,_RESOLUTION,_SMOOTHING);
sf[4].setAll(pin5,MIN_5,MAX_5,_START_DELAY,_RESOLUTION,_SMOOTHING);
//hand.setAll(sf); //QUI HO UN PROBELEMA: Il print sotto printa la risoluzione invece del delay
//hand.prova();

//homing();
Serial.println("INIZIALIZZO LA MANO --> HOMING");
Serial.println(sf[0].getDelay());
}

void loop() {
  // put your main code here, to run repeatedly:
  if(hand.getIsMoving() == 0) {
    index = 0;
    comando = Serial.readString();
    if(comando.startsWith("a")) {
    comando.remove(0,1);
    for(int i = 0; i< comando.length();i++) {
    if(comando.substring(i,i+1) != ",") {
      dato += comando.substring(i,i+1);
    } else {
      angles[index] = (dato.toInt())*1000;
      dato = "";
      index++;
    }
  }
    comando = "";
    for(int i = 0; i<NUM_FINGERS_;i++) {
        Serial.println(angles[i]);
      }
    setAngles(angles); 
    simulate();
    
//    servo1.setAngle(angolo*1000);
//    Serial.print("Il numero di iterazioni atteso è: ");
//    Serial.println(servo1.getTotalIterations(angolo,servo1.getPreviousAngle()));
//    servo1.setIsMoving(1);
//    t = millis();
  }
  }
  
//  if(hand.getIsMoving() == 1) {
//    if (hand.runToPosition(&t) == 0)
//     Serial.println("Movimento finito");
//  }
  
  

}

void homing() {
writeFingers(home_angles);
}


String* split(String s, String sep) {
  String result[5];
  String dato = "";
  int index = 0;
  for(int i = 0; i< s.length();i++) {
    if(s.substring(i,i+1) != sep) {
      dato += s.substring(i,i+1);
    } else {
      result[index] = dato;
      index++;
    }
}
result[index] = dato;
return result;
}

void setAngles(long int _angles[]) {
  for(int i = 0; i < NUM_FINGERS_; i++) { 
    Serial.println("Finger " + String(i) +"--------------");   
    sf[i].setAngle(_angles[i]);
    Serial.println("Angle = " + String(_angles[i]));
    deltaAngle[i] = abs(sf[i].getAngle() - sf[i].getPreviousAngle());
    Serial.println("dAngle = " + String(deltaAngle[i]));
    iterations[i] = sf[i].getTotalIterations(_angles[i], sf[i].getPreviousAngle());
    Serial.println("Iter = " + String(iterations[i]));    
  }
  int maxTime = getMax(iterations)*_START_DELAY;
  for(int i = 0; i < NUM_FINGERS_; i++) {
    int act_delay = 0;
    if(iterations[i] != 0){
      Serial.println(String(maxTime) + "/" + String(iterations[i]));
      act_delay = max(_START_DELAY, round((float) maxTime/iterations[i]));
    } else {
      act_delay= _START_DELAY;
    }
    sf[i].setDelay(act_delay);  
    Serial.println("Delay = " + String(act_delay));
  }
}

void writeFingers(long int _angles[]) {
  setAngles(_angles);
  for(int i = 0; i < NUM_FINGERS_; i++) {
    sf[i].writeAngle(_angles[i]);
  }
}

int getMax(int a[]){
  int _max = 0;
  for(int i = 0; i < NUM_FINGERS_; i++) {
    _max = max(a[i],_max);
    Serial.println("Looking for max value: " + String(_max)); 
}
return _max;
}

void simulate() { //Ritorna la somma dei delay totali di tutte le dita, la somma dovrebbe essere uguale.
  for(int i = 0; i < NUM_FINGERS_;i++) {
    int total_delay = 0;
    for(int j = 0; j < iterations[i]; j++) {
      total_delay += sf[i].getDelay();
    }
      Serial.print("Finger " + String(i) +": ");
      Serial.println(total_delay);
  }

}
