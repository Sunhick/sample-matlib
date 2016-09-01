#include "../inc/matlib.h"
#include <stdio.h>

int Square(int number) {
	printf("Square for number %d in submodule\n", number)
	return (number*number);
}

float Cube(float number) {
	return (number*number*number);
}