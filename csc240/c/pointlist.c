#include <stdio.h>
#include <stdlib.h>
#include "basiclist.h"

typedef struct {
	int x;
	int y;
} point_t;

int main()
{
	int ii = 4;
	point_t * new_point;
	node_t * list = NULL;
	node_t * curr;
	
	point_t p1 = {9,3};
	point_t p2 = {6,10};
	point_t p3 = {2,6};
	point_t p4 = {4,12};
	
	new_point = (point_t *) malloc (sizeof(point_t));
	*new_point = p1;
	list_add(&list, new_point);
	
	new_point = (point_t *) malloc (sizeof(point_t));
	*new_point = p2;
	list_add(&list, new_point);
	
	new_point = (point_t *) malloc (sizeof(point_t));
	*new_point = p3;
	list_add(&list, new_point);
	
	new_point = (point_t *) malloc (sizeof(point_t));
	*new_point = p4;
	list_add(&list, new_point);
	
	curr = list;
	while (curr != NULL) {
		point_t * ptr = curr->data;
		printf("point_t p%d = (%d, %d)\n", ii, ptr->x, ptr->y );
		ii--;
		curr = curr->next;
	}
	
	
	return 0;
}