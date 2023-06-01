#include "Engineer.h"
int Engineer::getCarPrice(Car* xx) {
	return xx->price; // access protected or private
}
float Engineer::getCarspeed(Car* xx) {
	return xx->speed;
}
void Engineer::speedup(Car* xx, int yy) {
	xx->speedUp(yy);
}
void Engineer::setwheel(Car* xx, int yy) {
	xx->setWheels(yy);
}
int Engineer::getwheel(Car* xx) {
	return xx->wheels;
}
void Engineer::setsparewheel(SUV* xx, int zz) {
	xx->setSparewheels(zz);
}
