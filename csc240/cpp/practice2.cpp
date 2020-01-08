#include<iostream>
using namespace std;

class DynamicArray {
private:
  int i;
  int * dynArr;
public:
  DynamicArray(int x=0) {
     i = x;
     dynArr = new int[i];
  }

  ~DynamicArray() {
    delete[] dynArr;
    dynArr = nullptr; 
  }

  void fill_array();
  void print();
};

void DynamicArray:: fill_array() {
    for(int y = 0; y < i; y++) {
      dynArr[y] = y + 1;
    }
}

void DynamicArray:: print() {
  for(int z = 0; z < i; z++) {
    cout << dynArr[z] << endl;
  }
}

int main() {
  DynamicArray arr1(5);
  DynamicArray arr2(10);

  arr1.fill_array();
  arr2.fill_array();

  cout << "arr1(5): " << endl;
  arr1.print();

  cout << endl;
  cout << "arr2(10): " << endl;
  arr2.print();
  cout << endl;

  return 0;
}
