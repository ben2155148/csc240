#include <stdio.h>
#include <stdlib.h>

/* Forward declarations */
int seq(int n);
void double_it(int * n); 
int triple_it(int n);

int main()
{
   int n = 1;
   printf("ii    seq(ii)  double_it(ii)  triple_it(n)\n");
   for (int ii=0;ii<=10;ii++) {
       printf("%2d   ",ii);
       printf("%8d",seq(ii));
       double_it(&n);
       printf("%15d",n);
       printf("%14d",triple_it(ii));
       printf("\n");
   }

   return 0;
}

/* Include implementations of your functions below */
int seq(int n) {
	int num = 0;
	if (n <= 2) {
		num = 1;
	} else {
		num = (n*n) + n * seq(n-1) + seq(n-2); 
	}
	return num;
}

void double_it(int * n) {
	int p = 2;
	int * j = n;
	int * k = &p;
	*j = *j * *k;
}

int triple_it(int n) {
	int r = n;
	return r * 3;
}
