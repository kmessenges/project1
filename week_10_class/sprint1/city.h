#pragma once
#include <iostream>
#include <fstream>
#include "FC.h"
using namespace std;

class CITY {
public:
	CITY() {
		fc[0] = FC(0);
		fc[1] = FC(5);
		fc[2] = FC(10);
		fc[3] = FC(15);
		fc[4] = FC(15);
		fc[5] = FC(18);
		fc[6] = FC(21);
		fc[7] = FC(18);
		fc[8] = FC(14);
		fc[9] = FC(9);
		fc[10] = FC(4);
		fc[11] = FC(0);
	};
	FC fc[12];
};
