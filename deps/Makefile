default: all shared

all:
	$(MAKE) -C bin

LIB   = bin/libSPARSEAMA
LINUX = so
OSX   = dylib

ifeq ($(shell uname), Linux)
shared: clean
	cp $(LIB).$(LINUX) .
endif

ifeq ($(shell uname), Darwin)
shared: clean
	cp $(LIB).$(OSX) .
endif

clean: 
	rm -f libSPARSEAMA.*  
