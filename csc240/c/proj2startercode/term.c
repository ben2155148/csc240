/* Benjamin Gonzalez Jr */
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include "term.h"

char * term_to_string(const term_t * term) {
	char * ptr;
	int tcoef = term->coefficient, texp = term->exponent;
	char tvar = term->var;	
	
	/* I think it's safe to assume there wouldn't be a case
	 * where the coefficient = 0 or the variable would be anything 
	 * other than a letter */
	   
	if(tcoef > 1) { /* if the coefficient is greater than 1 */
		if((tvar >= 'A' && tvar <= 'Z') || (tvar >= 'a' && tvar <= 'z')) { /* if var = any letter */
			if(texp > 1) { /* if exp is greater than 1 */
				ptr = malloc(sizeof(int) + sizeof(char) + sizeof(int) + 1);
				sprintf(ptr, "%d%c^%d", tcoef, tvar, texp);
			}
			else if (texp == 1){ /* if the exp is 1 */
				ptr = malloc(sizeof(int) + sizeof(char) + 1);
				sprintf(ptr, "%d%c", tcoef, tvar);
			}
			else { /* if the exp is 0*/
				ptr = malloc(sizeof(int) + 1);
				sprintf(ptr, "%d", tcoef);
			}
		}
		
	}
	else { /* if the coefficient is 1 */
		if((tvar >= 'A' && tvar <= 'Z') || (tvar >= 'a' && tvar <= 'z')) { /* if var = any letter */
			if(texp > 1) { /* if exp is greater than 1 */
				ptr = malloc(sizeof(char) + sizeof(int) + 1);
				sprintf(ptr, "%c^%d", tvar, texp);
			}
			else if (texp == 1){ /* if the exp is 1 */
				ptr = malloc(sizeof(char) + 1);
				sprintf(ptr, "%c", tvar);
			}
			else { /* if the exp is 0 */
				ptr = malloc(sizeof(int) + 1);
				sprintf(ptr, "%d", tcoef);
			}
		}
	}
	return ptr;
}


