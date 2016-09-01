CC = gcc
DEBUG = -g -O0
LDFLAGS = 

IDIR = ./inc
BDIR = ../lib

CCFLAGS = -Wall $(DEBUG) -I $(IDIR)

all: $(BDIR) libmatlib.a

$(BDIR):
	mkdir -p $@

libmatlib.a: matlib.o
	ar -cvq $(BDIR)/$@ $(BDIR)/$<
	rm $(BDIR)/*.o

matlib.o: src/matlib.c
	$(CC) -c -o $(BDIR)/$@ $(CCFLAGS) $<

.PHONY: clean
clean:
	-rm *.o *.a
	-rm -rf $(BDIR)