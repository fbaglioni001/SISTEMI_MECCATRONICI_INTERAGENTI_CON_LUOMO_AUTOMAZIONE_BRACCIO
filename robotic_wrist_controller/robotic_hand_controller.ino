
/*********************************************************************************************************
  BRACCIO ROBOTICO COMANDATO DA ROS
  PROGRAMMA CONTROLLO MANO CON 5 SERVOMOTORI
  mediante utilizzo arduino micro
  Authors: Baglioni Francesco (f.baglioni001@studenti.unibs.it )
           Campregher Francesco (f.campregher@studenti.unibs.it)
           Mirandola Edoardo (e.mirandola@studenti.unibs.it)
  A.A. 2021/22
  REPO: https://github.com/fbaglioni001/SISTEMI_MECCATRONICI_INTERAGENTI_CON_LUOMO_AUTOMAZIONE_BRACCIO.git
**********************************************************************************************************/

#include "ServoHand.h"
#include <Wire.h>

#define _DATA_BYTES 10
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
int iterations[NUM_FINGERS_];
ServoFinger sf[NUM_FINGERS_];

//----------- Variabili i2c -------------
unsigned int triggerPin = 13;
int data[_DATA_BYTES];

void setup() {
  Serial.begin(9600);
  Wire.begin(22);
  Wire.onReceive(receiveData);
  pinMode(triggerPin, OUTPUT);
  for (int i = 0; i < NUM_FINGERS_; i++) {
    sf[i] = ServoFinger();
  }
  sf[0].setAll(pin1, MIN_1, MAX_1, _START_DELAY, _RESOLUTION, _SMOOTHING);
  sf[1].setAll(pin2, MIN_2, MAX_2, _START_DELAY, _RESOLUTION, _SMOOTHING);
  sf[2].setAll(pin3, MIN_3, MAX_3, _START_DELAY, _RESOLUTION, _SMOOTHING);
  sf[3].setAll(pin4, MIN_4, MAX_4, _START_DELAY, _RESOLUTION, _SMOOTHING);
  sf[4].setAll(pin5, MIN_5, MAX_5, _START_DELAY, _RESOLUTION, _SMOOTHING);

  Serial.println("INIZIALIZZO LA MANO --> HOMING");
  for (int i = 0; i < NUM_FINGERS_; i++) {
    sf[i].attachServo();
  }
  homing();
}

void loop() {
  // put your main code here, to run repeatedly:
  if (is_setup == 1) {
    t_offset = millis();
    if(isRelative == 0) {
      for (int i = 0; i < NUM_FINGERS_; i++)
      {
        angles[i] = home_angles[i] + (percentAngles[i]*(max_angles[i]-home_angles[i]));
      }
    } else {
      for (int i = 0; i < NUM_FINGERS_; i++)
      {
        angles[i] = angles[i] + (percentAngles[i]*(max_angles[i]-home_angles[i]));
      }
    }

    setAngles(angles,totalTime);
    digitalWrite(triggerPin, HIGH);
    isMoving = 1;
    is_setup = 0;
    while(millis -t_offset < offsetTime) {

    }
    for (int i = 0; i < NUM_FINGERS_; i++) {
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
  for (int i = 0; i < NUM_FINGERS_; i++) {
    sf[i].attachServo();
  }
}

void setAngles(long int _angles[], int totalTime) {
  for (int i = 0; i < NUM_FINGERS_; i++) {
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
  for (int i = 0; i < NUM_FINGERS_; i++) {
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
