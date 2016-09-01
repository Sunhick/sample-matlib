CC = gcc
DEBUG = -g -O0
LDFLAGS = 

IDIR = ./inc

CCFLAGS = -Wall $(DEBUG) -I $(IDIR)

all: matlib.a

matlib.a: matlib.o
	ar -cvq $@ $<

matlib.o: src/matlib.c
	$(CC) -c $(CCFLAGS) $<