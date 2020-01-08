#include "Polynomial.hpp"

void Polynomial::add(Term t) {
  poly.push_back(t);
}

void Polynomial::print() {
  unsigned int index = 0;
  for(auto& ii : poly) {
    index++;
    cout << ii.toString();
    if(index != poly.size()) {
      cout << " + ";
    }
  }
}
