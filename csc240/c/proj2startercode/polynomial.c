/* Benjamin Gonzalez Jr */
#include<stdio.h>
#include<stdlib.h>
#include "term.h"
#include "polynomial.h"
#include "basiclist.h"

poly_t * new_polynomial() {
	poly_t * ptr = malloc(sizeof(poly_t));
	return ptr;
}

void add_to_polynomial(poly_t * poly, const term_t * term) {
	list_add(&poly->nptr, (void *) &term);
}

void print_polynomial(const poly_t * poly) {
	node_t * curr = poly->nptr; 
  while(curr != NULL) {
		term_t * this_term = (term_t *) curr->data;
		printf(term_to_string(this_term));
		curr = curr->next;
	}
}
