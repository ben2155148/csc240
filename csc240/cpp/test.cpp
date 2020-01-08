#include <iostream>
#include <vector>

using namespace std;

class test {
  vector<int> vec;
  unsigned int max_capacity;
  public:
    test(int x = 0) {
      max_capacity = x;
    }

    void add(int x) {
      vec.push_back(x);

      //check vec.size() < max_capacity
      if(vec.size() > max_capacity) {
        cout << endl << "Max capacity reached! ";
      }
    }

    void print_list() {
      cout << "Number of integers in the list: " << vec.size() <<  " ";
      cout << "| NumberList: ";
      for(unsigned int ii = 0; ii < vec.size(); ii++) {
        cout << vec.at(ii) << " ";
      }
    }
};


int main() {
  test numList1(3);

  numList1.add(32);
  numList1.add(23);
  numList1.add(24);

  numList1.print_list();

  numList1.add(2323);
  return 0;
}
