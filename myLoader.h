
#include "glut.h"
#include <vector>
#include <string>
using namespace std;
class myLoader{
public:
	myLoader(string filename);//���캯��
	void Draw();//���ƺ���
private:
	vector<vector<GLfloat>>vSets;//��Ŷ���(x,y,z)����
	vector<vector<GLint>>fSets;//������������������
};