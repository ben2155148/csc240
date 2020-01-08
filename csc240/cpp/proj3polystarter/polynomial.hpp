#ifndef POLYNOMIAL_HPP
#define POLYNOMIAL_HPP
#include <iostream>
#include <string>
#include <stdlib.h>
#include <vector>
#include <string.h>
#include "term.hpp"
using namespace std;

class Polynomial {
  private:
    vector<Term> poly;
  public:
    Polynomial() {
    }
    void add(Term t);
    void print();
    Polynomial combineLikeTerms();
};

#endif
