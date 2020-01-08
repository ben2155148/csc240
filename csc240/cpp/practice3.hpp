#ifndef NUMBERLIST_HPP
#define NUMBERLIST_HPP
#include <iostream>
#include <vector>
using namespace std;

class NumberList {
  public:
    vector<int> vec;
    unsigned int max_capacity;
    NumberList(int x) {
      max_capacity = x;
    }

    ~NumberList() {
      
    }
    void add(int x);
    void print_list();
};

#endif
