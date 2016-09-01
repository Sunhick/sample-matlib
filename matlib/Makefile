CC = gcc
DEBUG = -g -O0
LDFLAGS = 

IDIR = ./inc
BDIR = ../lib

CCFLAGS = -Wall $(DEBUG) -I $(IDIR)

all: $(BDIR) matlib.a

$(BDIR):
	mkdir -p $@

matlib.a: matlib.o
	ar -cvq $(BDIR)/$@ $(BDIR)/$<
	rm $(BDIR)/*.o

matlib.o: src/matlib.c
	$(CC) -c -o $(BDIR)/$@ $(CCFLAGS) $<

.PHONY: clean
clean:
	-rm *.o *.a
	-rm -rf $(BDIR)