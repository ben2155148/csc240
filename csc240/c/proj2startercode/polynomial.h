/* Benjamin Gonzalez Jr */
#ifndef POLYNOMIAL_H_
#define POLYNOMIAL_H_
#include "basiclist.h"
#include "term.h"

typedef struct {
	node_t * nptr;
} poly_t;

poly_t * new_polynomial();
void add_to_polynomial(poly_t * poly, const term_t * term);
void print_polynomial(const poly_t * poly);
poly_t * combine_like_terms(const poly_t * poly);
void * delete_polynomial(poly_t ** poly);

#endif
