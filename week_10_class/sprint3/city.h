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
	ofstream outf;
	FC fc[12];
	float a[12];

	void out(char *fn) {
		outf.open(fn);
		for (int i = 0; i < 12; i++) {
			outf << fc[i].c << "  " << fc[i].f << "\n";
		}
	}
};
