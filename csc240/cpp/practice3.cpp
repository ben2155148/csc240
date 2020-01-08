#include "practice3.hpp"

void NumberList::add(int x) {
  vec.push_back(x);

  //check vec.size() < max_capacity
  if(vec.size() > max_capacity) {
    cout << endl << "Max capacity reached! ";
  }
}

void NumberList::print_list() {
  for(unsigned int ii = 0; ii < vec.size(); ii++) {
    cout << vec.at(ii) << " ";
  }
  cout << "| Number of integers in the list: " << vec.size() <<  " ";
}

int main() {
  NumberList numList1(7);
  NumberList numList2(5);

  numList1.add(19);
  numList1.add(12);
  numList1.add(9);
  numList1.add(134);
  numList1.add(34);
  numList1.add(456);
  numList1.add(6);

  cout << "numList1: ";
  numList1.print_list();
  cout << endl;

  numList2.add(134);
  numList2.add(76);
  numList2.add(56);
  numList2.add(897);
  numList2.add(36);

  cout << "numList2: ";
  numList2.print_list();
  cout << endl;

  cout << "Adding to numList2 when at max capacity: ";
  numList2.add(6);
  return 0;
}
