#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

class Grades {
  vector<int> grd;
  unsigned int cap;
  public:
    Grades(int x = 0) {
      cap = x;
    }

  void add(int x) {
    grd.push_back(x);

    //check grd.size() < cap
    if(grd.size() > cap) {
      cout << endl << "Capacity reached! ";
    }
  }

  void print() {
    double avg = 0;
    cout << "Grades: ";
    for(unsigned int ii = 0; ii < grd.size(); ii++) {
      avg = avg + grd.at(ii);
      cout << grd.at(ii) << " ";
    }
    avg = avg/grd.size();
    cout << " Avg: " << avg << endl;
  }
};

int main() {
  Grades csc240(3);

  csc240.add(100);
  csc240.add(23);
  csc240.add(88);

  csc240.print();

  csc240.add(85);


  return 0;
}
