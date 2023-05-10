#pragma once
class FC {
public:
	FC() {};
	FC(float cc) { c = cc; f = getF(); };
	float c, f;
	float getF() { return (c * 9. / 5. + 32.0); }
	float getC() { return ((f - 32.0) * 5. / 9.); }
};
