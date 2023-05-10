#include <iostream>
#include <fstream>
#include "FC.h"
using namespace std;

#pragma once

class CITY {
public:
	CITY() { };
	CITY(char *fn) {
		inf.open(fn);
		for (int i = 0; i < 12; i++) {
			inf >> a[i];
			fc[i] = FC(a[i]);
		}
	};
	ifstream inf;
	FC fc[12];
	float a[12];
};
