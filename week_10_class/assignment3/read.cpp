#include <iostream>
#include <fstream>
#include "lol.h"
using namespace std;

void main() {
	LOL akali(5, 10, 2, 3, -5, 0.1, 10, "akali.dat");
	LOL amumu(7, 100, -3.5, 4, 100, 10, 15, "amumu.dat");
	LOL annie(12, 17, 0.01, 0.2, 1.5, 0.08, 20, "annie.dat");
	LOL ashe(10, 20, 4.2, -5.3, 2.1, 0.2, 5, "ashe.dat");
	ifstream inf;
	int N1, N2, m;
	float a, b, x0, dx;
	cout << "ashe.dat" << endl;
	inf.open("ashe.dat", ios::binary | ios::in);
	inf.read((char*)&N1, sizeof(N1));
	inf.read((char*)&N2, sizeof(N2));
	inf.read((char*)&a, sizeof(a));
	inf.read((char*)&b, sizeof(b));
	inf.read((char*)&x0, sizeof(x0));
	inf.read((char*)&dx, sizeof(dx));
	inf.read((char*)&m, sizeof(m));
	int* data1;
	data1 = new int[N2 - N1 + 1];
	inf.read((char*)data1, sizeof(int) * (N2 - N1 + 1));
	float* data2;
	data2 = new float[m];
	inf.read((char*)data2, sizeof(float) * m);
	cout << N1 << " " << N2 << " " << a << " " << b << " " << x0 << " " << dx << " " << m << endl;
	for (int i = 0; i < N2 - N1 + 1; i++) {
		cout << data1[i] << " ";
	}
	cout << endl;
	for (int j = 0; j < m; j++) {
		cout << data2[j] << " ";
	}

}
