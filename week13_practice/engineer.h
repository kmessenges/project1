#pragma once
#include "Car.h"
#include "SUV.h"
class Engineer {
public:
	int getCarPrice(Car*);
	float getCarspeed(Car*);
	void speedup(Car*, int);
	void setwheel(Car*, int);
	int getwheel(Car*);
	void setsparewheel(SUV*, int);
};
