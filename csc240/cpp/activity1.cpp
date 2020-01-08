#include<iostream>

using namespace std;

class MyClass {
  private:
    int num;
  public:
    MyClass(int x=0) {
      num = x;
    }
    int doubleNum();    // Returns num times 2
    void print();       // Prints num
};

int MyClass::doubleNum() {
	num = num*2;
	return num;
}

void MyClass::print() {
	cout << num << endl;
}

int main() {
	MyClass test(3);
	MyClass * test2 = new MyClass(10);
	
	cout << "MyClass 1: " << endl;
	test.print();
	cout << "MyClass 1 after doubleNum(): " << endl;
	test.doubleNum();
	test.print();
	
	cout << "MyClass 2: " << endl;
	test2->print();
	cout << "MyClass 2 after doubleNum(): " << endl;
	test2->doubleNum();
	test2->print();
	
	cout << endl << "done" << endl;
	
	return 0;
}