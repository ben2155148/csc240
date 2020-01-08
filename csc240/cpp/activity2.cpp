#include<iostream>
using namespace std;

class MyClass {
  private:
    int num;
  public:
    //Constructor
    MyClass(int x = 0) {
      num = x;
    }
};

int main() {
  static int stat_int; //allocated in static memory

  MyClass c1(13); //allocated on stack

  MyClass * c2;
  c2 = new MyClass(26);

  return 0;
}
