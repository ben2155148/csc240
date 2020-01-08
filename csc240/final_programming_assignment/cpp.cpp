#include<iostream>

using namespace std;

int recursiveFunction(int x) {
  if (x <= 1) {
    return 1;
  }
  else {
    return (x * x) * recursiveFunction(x - 1);
  }
}

int main() {
  cout << "f(0) = " << recursiveFunction(0) << endl;
  cout << "f(1) = " << recursiveFunction(1) << endl;
  cout << "f(2) = " << recursiveFunction(2) << endl;
  cout << "f(3) = " << recursiveFunction(3) << endl;
  cout << "f(4) = " << recursiveFunction(4) << endl;
  cout << "f(5) = " << recursiveFunction(5) << endl;

  return 0;
}
