#include <iostream>
#include "lol.h"
using namespace std;

void LOL::intf() {
	int num = N2 - N1 + 1;
	xx = new int[num];
	for (int i = 0; i < num; i++) {
		xx[i] = (N1 + i) * (N1 + 1 + i) / 2;
	}
	outf.write((char*)xx, sizeof(int) * (num));

}
void LOL::floatf() {
	yy = new float[m];
	float x;
	x = x0;
	for (int i = 0; i < m; i++) {
		yy[i] = a * x + b;
		x += dx;
	}
	outf.write((char*)yy, sizeof(int) * m);
}
LOL::~LOL() {
	delete[]xx;
	delete[]yy;
}
