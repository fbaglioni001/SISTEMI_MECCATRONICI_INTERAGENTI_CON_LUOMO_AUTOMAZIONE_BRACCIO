#ifndef ServoHand_h
#define ServoHand_h
#include "ServoFinger.h"

class ServoHand {

public:
	ServoHand(int _n);
  setAll(ServoFinger _sf[]);
	ServoFinger getServo(int i);	
	void setAngles(long int angles[]);
  void attachHand();
  void writeFingers(long int angles[]);
	int runToPosition(long int *t);
  int getIsMoving();
  void simulate();
  void prova();
  String getAngles();
private:
  int n;
	ServoFinger sf[];
	long int deltaAngle[];
	int iterations[];
	int minDelayTime;
	int getMax(int a[]);
  int isMoving;
};

#endif
