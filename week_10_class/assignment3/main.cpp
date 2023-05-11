#include <iostream>
#include <fstream>
#include "lol.h"
using namespace std;

void main() {
	LOL akali(5, 10, 2, 3, -5, 0.1, 10, "akali.dat");
	LOL amumu(7, 100, -3.5, 4, 100, 10, 15, "amumu.dat");
	LOL annie(12, 17, 0.01, 0.2, 1.5, 0.08, 20, "annie.dat");
	LOL ashe(10, 20, 4.2, -5.3, 2.1, 0.2, 5, "ashe.dat");
}
