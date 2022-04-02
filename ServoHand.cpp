#include "ServoHand.h"
#include "Arduino.h"

ServoHand::ServoHand(int _n) {
  n = _n;
 isMoving = 0;
}

ServoHand::setAll(ServoFinger _sf[]){
  for(int i = 0; i < n;i++) {
    sf[i].equal(_sf[i]);
  }
}

ServoFinger ServoHand::getServo(int i) {
	return sf[i];
}
void ServoHand::attachHand() {
  for(int i = 0; i < n; i++) {
    sf[i].attachServo();
  }
}

void ServoHand::prova() {
  Serial.println(sf[0].getDelay());
}

String ServoHand::getAngles() {
  String result = "";
  for(int i = 0; i < n;i++) {
    result += String(sf[i].getAngle());
  }
}

void ServoHand::setAngles(long int angles[]) {
	for(int i = 0; i < n; i++) {
		sf[i].setAngle(angles[i]);
		deltaAngle[i] = abs(sf[i].getAngle() - sf[i].getPreviousAngle());
		iterations[i] = sf[i].getTotalIterations(sf[i].getAngle(), sf[i].getPreviousAngle());
	}
	int maxTime = getMax(iterations)*minDelayTime;
	for(int i = 0; i < n; i++) {
		sf[i].setDelay(maxTime/iterations[i]);
	}
}

int ServoHand::runToPosition(long int *t) {
	int a = 0;
	for(int i = 0; i < n; i++) {
		if(sf[i].getIsMoving() == 1) {
    		if (sf[i].run(t) == 1)
    			a++; 
 			 }
	}
	if(a == 0) {
    isMoving = 0;
		return 0;
	} else {
    isMoving = 1;
		return 1;
	}
	
}

int ServoHand::getMax(int a[]){
	int max = 0;
	for(int i = 0; i < n; i++) {
		if(a[i] > max) {
			max = a[i];
		}
	return max;
}
}

int ServoHand::getIsMoving() {
  return isMoving;
}

void ServoHand::simulate() { //Ritorna la somma dei delay totali di tutte le dita, la somma dovrebbe essere uguale.
  for(int i = 0; i < n;i++) {
    int total_delay = 0;
    for(int j = 0; j < iterations[i]; j++) {
      total_delay += sf[i].getDelay();
    }
      Serial.println(total_delay);
  }

}

void ServoHand::writeFingers(long int angles[]) {
  setAngles(angles);
  for(int i = 0; i < n; i++) {
    sf[i].writeAngle(angles[i]);
  }
}
