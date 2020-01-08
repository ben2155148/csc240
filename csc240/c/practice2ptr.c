#include<stdio.h>
#include<stdlib.h>
#include<string.h>

/* Rewrite using a pointer to char str[] */
void array_to_ptr () {
  int n = 0, len = 0;
  char * ptr = "Hello World!";
  while (*ptr != '\0') {
	  putc(*ptr, stdout);
	  ptr++;
	  len++;
  }
  n = len;
  printf("\nlength = %d\n", n);
}

int contains (char * str, char c);
int * makearray(int n);

int main (void) {
  printf("Question #2 - array_to_ptr:\n");
  array_to_ptr();   
  printf("\n------------------------------------\n\n");

  printf("Question #3 - contains:\n");
  printf("Test #1: ");
  if ( contains("Hello", 'e') == 1) {
    printf("The string \"Hello\" contains the character 'e'\n");
  }
  else {
    printf("The string \"Hello\" does not contain the character 'e'\n");
  }
  printf("Test #2: ");
  if ( contains("Hello", 'x') == 1) {
    printf("The string \"Hello\" contains the character 'x'\n");
  }
  else {
    printf("The string \"Hello\" does not contain the character 'x'\n");
  }
  printf("\n------------------------------------\n\n");

  printf("Question #4: - makearray:\n");
  int * arr = makearray(10);
  for (int ii=0;ii<10;ii++) {
    printf("%d ", *(arr+ii));
  }
  printf("\n");
  printf("\n------------------------------------\n\n");
  return 0;
}

int contains (char * str, char c) {
	int ret = 0;
	while (*str != '\0') {
		if (*str == c) {
			ret = 1;
		}
		str++;
	}
	return ret;
}

int * makearray(int n) {
	int * ptr = (int *) malloc(n * sizeof(int));
	for (int ii = 1; ii <= n; ii++) {
		*(ptr+ii) = ii+1;
	}
	return ptr;
}
