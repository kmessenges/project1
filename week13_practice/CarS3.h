#pragma once
class Car {
public:
	Car() :speed(0.1), wheels(0), price(0.2) {
		max_member = 5; my_num = 1111;
	};
	Car(float, int, float);
	void setPrice(float);
	float getPrice();
	float speed;
	void speedChange(float);
	int wheels;
	void setWheels(int);
	int getWheels();
	void klaxon(int);
	float price;
	int empty_chair(int);
private:
	int max_member;
protected:
	void speedUp(float);
	void speedDown(float);
	int my_num;
};
