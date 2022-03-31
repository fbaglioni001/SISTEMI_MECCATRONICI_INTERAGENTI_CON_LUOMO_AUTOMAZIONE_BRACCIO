#include "law.h"


Motor::Motor(unsigned int _period_size, unsigned int _acc,unsigned int _vel_min, unsigned int _steps, unsigned int _dir): acc{_acc},vel_min{_vel_min}, steps{_steps}, dir{_dir}
{
	period = new long unsigned int[_period_size];
}


void Motor::set_min_vel(unsigned int _vel_min)
{
	vel_min = _vel_min;
}


bool Motor::run()
{
	if(!is_possible){
		return true;
	}
	
  
	if(!((time_tot)/2.0>=time_acc+tc)){
	vel_max=vel_min+acc*time_acc/TIME_2_SECOND;
	time_acc+=(long unsigned int)(TIME_2_SECOND/vel_max);
	period[disp_acc]=((long unsigned int)(TIME_2_SECOND/vel_max));
  disp_acc+=1;
  tc=(long long unsigned int)(((disp/2-disp_acc)*TIME_2_SECOND)/vel_max);
	}
	if(micros()-times >= period[index/2]/2){
		times=micros();
		digitalWrite(dir,directions);
		toggle_pin(steps);
		current_disp+=1;
		if(floor(current_disp/2)<disp_acc){
			index+=1;	
		}else if(floor(current_disp/2)>disp-disp_acc){
			index-=1;
		}
	}
 if(current_disp>=disp*2){
  return true;
 }
 return false;
}


bool Motor::set_up(int _disp, float _time_tot)
{
  current_disp=0;
  index=0;
  time_acc=0;
  disp_acc=0;
  vel_max=vel_min;
	directions=(_disp>0);
	disp = abs(_disp);
  Serial.println(abs(_disp));
	time_tot = _time_tot*TIME_2_SECOND;
  tc=(long long unsigned int)(((disp/2-disp_acc)*TIME_2_SECOND)/vel_max);
	unsigned int acc_min=((2*disp*TIME_2_SECOND)/time_tot-vel_min)/time_tot*TIME_2_SECOND*2;
	if(acc_min>acc){
		is_possible=false;
		return false;
	}
	is_possible=true;
	if(disp/vel_min<=time_tot/TIME_2_SECOND){
		period[0]=((long unsigned int)((float)time_tot/disp));
    times = micros();
		return true;
	}
	if(acc/acc_min>1.2){
		acc=acc_min*1.2;
    times = micros();
    return true;
	}else{
    acc=acc_min;
    times = micros();
    return true;
	}
}


void Motor::toggle_pin(unsigned int _pin){
	digitalWrite(_pin,!digitalRead(_pin));
}
