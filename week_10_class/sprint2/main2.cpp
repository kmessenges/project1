#include <iostream>
#include "FC.h"
#include "city.h"
using namespace std;

int main() {
	CITY Seoul;
	Seoul = CITY((char*)"Seoul.txt");
	for (int i = 0; i < 12; i++) {
		cout << Seoul.fc[i].f << endl;
	}

	return 123;
}
