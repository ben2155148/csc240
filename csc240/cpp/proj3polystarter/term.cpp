#include "term.hpp"

string Term::toString() {
  string coef = to_string(coefficient);
  string expt = to_string(exponent);
  string term = "";
  if (coefficient == 0) {
    term += coef;
  }
  else if(coefficient == 1) {
    if(exponent == 0) {
      term += coef;
    }
    else if (exponent == 1) {
      term += variable;
    }
    else if (exponent > 1) {
      term += variable + "^" + expt;
    }
  }
  else if(coefficient > 1) {
    if(exponent == 0) {
      term += coef;
    }
    else if(exponent == 1) {
      term += coef + variable;
    }
    else if(exponent > 1) {
      term += coef + variable + "^" + expt;
    }
  }
  return term;
}

int Term::getCoefficient() {
  return coefficient;
}

string Term::getVariable() {
  return variable;
}

int Term::getExponent() {
  return exponent;
}
