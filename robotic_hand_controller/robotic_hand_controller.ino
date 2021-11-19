#include "ServoHand.h"
//a70,110,130,137,120,
//a157,20,3,46,32,
#define NUM_FINGERS_ 5
#define MAX_1 157000 //Definire gli angoli minimi per ogni dito. 
#define MIN_1 62000 //1: POLLICE
#define MAX_2 125000
#define MIN_2 17000 //2: INDICE
#define MAX_3 134000
#define MIN_3 1000 //3:MEDIO
#define MAX_4 154000 
#define MIN_4 38000 //4:ANULARE
#define MAX_5 130000
#define MIN_5 30000 //5:MIGNOLO
#define _SMOOTHING 70
#define _RESOLUTION 300
// DEFINIZIONE PIN SERVO
#define pin1 11
#define pin2 10
#define pin3 9
#define pin4 6
#define pin5 5
//DEFINIZIONE VELOCITA' SERVO
#define _START_DELAY 10

String comando = "";
long unsigned int t[NUM_FINGERS_];
String dato ="";
int firstStart =1;
int index = 0;
int isMoving = 0;
//VARIABILI MANO:
const long int home_angles[] = {MIN_1,MIN_2,MIN_3,MIN_4,MIN_5};
long int angles[NUM_FINGERS_];
long int deltaAngle[NUM_FINGERS_];
int iterations[NUM_FINGERS_];

//ServoFinger(int _pin, int _minAngle, int _maxAngle, unsigned int _delayMillis,int _resolution, int _smoothing);
ServoFinger sf[NUM_FINGERS_];
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


Serial.println("INIZIALIZZO LA MANO --> HOMING");
for(int i = 0; i < NUM_FINGERS_; i++) {
  sf[i].attachServo();
}
homing();
}

void loop() {
  // put your main code here, to run repeatedly:
  if(isMoving == 0) {
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
    isMoving = 1;
    
    for(int i = 0; i < NUM_FINGERS_; i++) {
    t[i] = millis();
  }
  }
  }
  
  if(isMoving == 1) {
    if (runToPosition() == 0)
     Serial.println("Movimento finito");
  }
  
  

}

void homing() {
writeFingers(home_angles);
}

void attachHand() {
  for(int i = 0; i < NUM_FINGERS_; i++) {
    sf[i].attachServo();
  }
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

int runToPosition() {
  int a = 0;
  for(int i = 0; i < NUM_FINGERS_; i++) {
    if(sf[i].getIsMoving() == 1) {
        if (sf[i].run(&t[i]) == 1) {
          a++; 
          //Serial.println(a);
        }
       }
  }
  if(a == 0) {
    isMoving = 0;
  } else {
    isMoving = 1;
  }
  return isMoving;
  
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
}
return _max;
}
