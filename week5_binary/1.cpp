#include <fstream>
#include <iostream>
#include <cmath>
using namespace std;

int main() {
	char* header;
	header = new char[12];
	int* n;
	float* f;
	short* p, *a, *data;  // ������ ����
	
	n = (int*)header;
	f = (float*)(header + 4);
	a = (short*)(f + 1);
	p = (short*)(header + 10); //�ּ� �Ҵ�

	*n = 500;     //������ ����
	*f = 1000.0; 
	*p = 12;
	*a = 1000;

	//sprint 1
	//����
	ofstream xx("a.dat", ios::binary | ios::out);
	if (!xx) {
		cout << "File not found : " << endl;
		return 666;
	}
	xx.write(header, 12 * sizeof(char));
	xx.close();
	
	//�б�
	ifstream yy("a.dat", ios::binary | ios::in);
	if (!yy) {
		cout << "File not found : " << endl;
		return 666;
	}
	yy.read(header, 12 * sizeof(char));
	yy.close();

	//sprint 2, ���ļ� ���� �� �ٽ� ����
	*f = 700.0;    //*f = 700 ����
	//�ٽ� ����
	ofstream xx2("b.dat", ios::binary | ios::out);
	if (!xx2) {
		cout << "File not found : " << endl;
		return 666;
	}
	xx2.write(header, 12 * sizeof(char));
	xx2.close();

	//sprint 3. ���� �а� ���� ä���
	//a.dat���� ���ļ� �̱�
	ifstream yy1("a.dat", ios::binary | ios::in);
	if (!yy1) {
		cout << "File not found : " << endl;
		return 666;
	}
	yy1.read(header, 12 * sizeof(char));
	yy1.close();


	data = new short[*n]; //data �Ҵ�. n[0] = 500
	const float pi = 3.141592;
	
	float dt = 1. / f[0] / 20.0; //f[0] = 1000(���ļ�)

	for (int i = 0; i < n[0]; i++) {
		data[i] = (short)(a[0] * sin(2.0 * pi * i * f[0] * dt));
	}
	ofstream xx3("a.dat", ios::binary | ios::out);
	if (!xx3) {
		cout << "File not found : " << endl;
		return 666;
	}
	xx3.write(header, 12 * sizeof(char));
	xx3.write((char*)data, n[0] * sizeof(short));
	xx3.close();

	//b.dat���� ���ļ� �̱�
	ifstream yy2("b.dat", ios::binary | ios::in);
	if (!yy1) {
		cout << "File not found : " << endl;
		return 666;
	}
	yy2.read(header, 12 * sizeof(char));
	yy2.close();
	//���� ���ļ��� 700
	for (int i = 0; i < n[0]; i++) {
		data[i] = (short)(a[0] * sin(2.0 * pi * i * f[0] * dt));
	}
	
	ofstream xx4("b.dat", ios::binary | ios::out);
	if (!xx4) {
		cout << "File not found : " << endl;
		return 666;
	}
	xx4.write(header, 12 * sizeof(char));
	xx4.write((char*)data, n[0] * sizeof(short));
	xx4.close();

	short* data1;
	short* data2;
	data1 = new short[*n];
	data2 = new short[*n];

	// Read data from binary file
	ifstream in1("a.dat", ios::binary | ios::in);
	if (!in1) return 666;
	in1.read(header, 12 * sizeof(char));
	in1.read((char*)data1, *n * sizeof(short));
	in1.close();

	ifstream in2("b.dat", ios::binary | ios::in);
	if (!in2) return 666;
	in2.read(header, 12 * sizeof(char));
	in2.read((char*)data2, *n * sizeof(short));
	in2.close();

	ofstream out("c.txt");
	if (!out) return 666;
	for (int i = 0; i < *n; i++) {
		out << i * dt << " " << data1[i] << " " << data2[i] << endl;
	}
	out.close();
}


