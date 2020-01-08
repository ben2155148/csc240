/* Benjamin Gonzalez Jr */
#ifndef TERM_H_
#define TERM_H_

typedef struct {
	int coefficient;
	char var;
	int exponent;
} term_t;

char * term_to_string(const term_t * term);

#endif