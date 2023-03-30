#include <fstream>
#include <iostream>
#include <cmath>
using namespace std;
int main() {
	ofstream ji("graph1.txt");
	if (!ji) {
		cout << " can't open file\n";
		return -1;
	}
	float t, dt, T;
	const float PI = 3.141592;
	t = 0.0;
	dt = 1. / 110. / 30.;
	T = 5./110.;
	for (t = 0.0; t < T; t += dt) {
		ji << t << " " << exp(-110 * t) * cos(220 * PI * t) << " " << exp(-110 * t) * sin(220 * PI * t) << endl;
	}
	ji.close();
	return 1;
}