#include <list>
#include <Arduino.h>

#define TIME_2_SECOND 1000000.0

class Motor
{
  private:
    long long unsigned int time_acc;
	  unsigned int disp_acc;
	  unsigned int vel_max;
	  unsigned int acc;
	  unsigned int disp;
	  long long unsigned int time_tot;
	  unsigned int vel_min{10};
	  long unsigned int* period;
	  unsigned int steps;
	  unsigned int dir;
	  bool directions{true};
	  long long unsigned int times{0};
	  unsigned int index{0};
	  unsigned int current_disp{0};
	  bool is_possible;
    long long unsigned int tc;
    bool is_finished{false};
    IntervalTimer timer;

  public:
  	Motor(unsigned int _period_size, unsigned int _acc,unsigned int _vel_min, unsigned int _steps, unsigned int _dir);
  	void set_min_vel(unsigned int _vel_min);
  	/*
  	*Non blocking run method, you have to call it in a while. 
  	*It returns true if the movment is finished otherwise returns false.
  	*/
  	bool run();		 
  	/*
  	*Setup the movment parameter. You have to call it before the run method.
  	*/
  	bool set_up(int _disp, float _time_tot);

  private:
  	void toggle_pin(unsigned int _pin);
  	void handle_int(void);
};
