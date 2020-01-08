#ifndef TERM_HPP
#define TERM_HPP
#include<iostream>
#include<string>
#include<stdlib.h>
using namespace std;

class Term {
  private:
    int coefficient;
    string variable;
    int exponent;
  public:
    Term(int x = 0, string n="x", int exp = 0) {
      coefficient = x;
      variable = n;
      exponent = exp;
    }
    string toString();
    int getCoefficient();
    string getVariable();
    int getExponent();
};
#endif
