#pragma once
#include <iostream>;
#include <fstream>;
using namespace std;

class LOL {
public:
	LOL() {};

	LOL(int aa, int bb, float cc, float dd, float ee, float ff, int gg, string hh) {
		N1 = aa; N2 = bb; a = cc; b = dd; x0 = ee; dx = ff; m = gg; t = hh;
		//header 28 + 4(N2-N1+1) + 4m
		outf.open(t, ios::binary | ios::out);
		outf.write((char*)&N1, sizeof(N1));
		outf.write((char*)&N2, sizeof(N2));
		outf.write((char*)&a, sizeof(a));
		outf.write((char*)&b, sizeof(b));
		outf.write((char*)&x0, sizeof(x0));
		outf.write((char*)&dx, sizeof(dx));
		outf.write((char*)&m, sizeof(m));
		intf();
		floatf();
		outf.close();
	}
	~LOL();
	int N1, N2, m, * xx;
	float a, b, x0, dx, * yy;
	string t;
	ofstream outf;

	void intf();
	void floatf();
};
