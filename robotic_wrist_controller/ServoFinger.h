#ifndef ServoFinger_h
#define ServoFinger_h

#include "Arduino.h"
#include <Servo.h>

class 	ServoFinger {

public:
	ServoFinger() = default;
  void setAll(int _pin, long int _minAngle, long int _maxAngle, unsigned int _delayMillis,int _resolution, int _smoothing);	
	long int getPreviousAngle();
	long int getAngle();
	long int getSmoothedAngle();
	long int getMinAngle();
	long int getMaxAngle();
	int getPin();	
	int getDelay(); 
	void setAngle(long int _angle); 
	void setDelay(int _delayMillis);
	int getTotalIterations(long int _angle, long int _previousAngle);
	void writeAnglePercentage(int percent);
	void writeAngle(long int _angle);
  void attachServo();
	long int getNext();
 	int getIsMoving();
 	void setIsMoving(int _state);
 	int run(long int *t);
  int getResolution();
  int getSmoothing();
  void equal(ServoFinger sf);

private:
	int smoothing;
	long int previousAngle;
	long int angle;
	long int smoothedAngle;
	long int minAngle;
	long int maxAngle;
	unsigned int delayMillis;
	int pin;
	int resolution;
  int isMoving;
	Servo servo;
};
#endif
