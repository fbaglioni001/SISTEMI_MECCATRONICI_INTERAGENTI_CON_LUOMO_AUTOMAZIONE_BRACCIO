#include "Arduino.h"
#include "ServoFinger.h"
#include <Servo.h>

  void ServoFinger::setAll(int _pin, long int _minAngle, long int _maxAngle, unsigned int _delayMillis,int _resolution, int _smoothing){
    minAngle = _minAngle;
    maxAngle = _maxAngle;
    previousAngle = _maxAngle;
    angle = previousAngle;
    smoothedAngle = previousAngle;
    pin = _pin;
    delayMillis = _delayMillis;
    resolution  = _resolution;
    smoothing = _smoothing;
    isMoving = 0;
  }

  void ServoFinger::attachServo() {
    servo.attach(pin);
  }
	long int ServoFinger::getPreviousAngle() {
		return previousAngle;
	}

	long int ServoFinger::getAngle() {
		return	angle;
	}

	long int ServoFinger::getSmoothedAngle() {
		return smoothedAngle;
	}

	long int ServoFinger::getMinAngle() {
		return	minAngle;
	}
	long int ServoFinger::getMaxAngle() {
		return maxAngle;
	}
	int ServoFinger::getPin() {
			return pin;
	}
	int ServoFinger::getDelay() {
			return	delayMillis;
	}
 	int ServoFinger::getIsMoving() {
    return isMoving;
 	}
 	int ServoFinger::getResolution(){
 		return resolution;
 	}
 	int ServoFinger::getSmoothing() {
 		return smoothing;
 	}

	void ServoFinger::setAngle(long int _angle) {
		if (_angle>= minAngle && _angle <= maxAngle) {
		previousAngle = angle;
		angle = _angle;
    	isMoving = 1;
    }
	}

	void ServoFinger::setDelay(int _delayMillis) {
		delayMillis	= _delayMillis;
	}

  void ServoFinger::setIsMoving(int _state) {
    isMoving = _state;
  }

  void ServoFinger::equal(ServoFinger sf) {
  	minAngle = sf.getMinAngle();
		maxAngle = sf.getMaxAngle();
		previousAngle = sf.getPreviousAngle();
		angle = sf.getAngle();
		smoothedAngle = sf.getSmoothedAngle();
		pin = getPin();
		delayMillis	= sf.getDelay();
		resolution	= sf.getResolution();
		smoothing = sf.getSmoothing();
		isMoving = sf.getIsMoving();
  	}

	int ServoFinger::getTotalIterations(long int _angle, long int _previousAngle) {
		long int _smoothedAngle, it = 0;
		while(abs(_angle - _previousAngle) >= resolution){
			_smoothedAngle	= (smoothing*_angle)/1000	+ ((1000 - smoothing)*_previousAngle)/1000;
			_previousAngle	= _smoothedAngle;
			it++;
		}
		return it;
	}
	void ServoFinger::writeAnglePercentage(int percent) {
		int _angle = (minAngle + (maxAngle-minAngle)*percent/100)/1000;
		servo.write(_angle);
		previousAngle = _angle;
	}
	void ServoFinger::writeAngle(long int _angle) {
	if (_angle>= minAngle && _angle <= maxAngle) {
		if(abs(angle - _angle) >= resolution) {
        previousAngle = angle;
        angle = _angle;
      	servo.write(_angle/1000);
    	}
	}
	}
	long int ServoFinger::getNext() {
		if(abs(angle - previousAngle) >= resolution) {
			return (smoothing*angle)/1000 + ((1000 - smoothing)*previousAngle)/1000;
		} else {
			return angle;
		}
	}
	int ServoFinger::run(long int *t) {
		if(millis() - *t > delayMillis) {
    		long int next = getNext();
    		if(next == angle) {
    		    isMoving = 0;
  			} else {
    		  writeAngle(next);
    		  *t = millis();
   			}		   
		}
		return isMoving;
	}
