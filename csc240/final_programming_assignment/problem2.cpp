#include<iostream>
#include<vector>

using namespace std;

int func1(int x) {
  return x * x;
}

int func2(vector<int> x) {
  int sum = 0;
  for(unsigned int i = 0; i < x.size(); i++) {
    sum = sum + (func1(x[i]));
  }
  return sum;
}

int func3(int x, int y) {
  if (x > y) {
    return func1(x) - func1 (y);
  }
  else {
    return func1(y) - func1(x);
  }
}

int main() {
  vector<int> test2 = {1,2,3,4};
  cout << func3(10, 14) << endl;
  cout << func2(test2) << endl;
  return 0;
}
