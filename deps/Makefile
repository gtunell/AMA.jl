default: all shared

all:
	$(MAKE) -C bin

LIB     = bin/libSPARSEAMA
LINUX   = so
OSX     = dylib
WINDOWS = dll

ifeq ($(shell uname), Linux)
shared: clean
	cp $(LIB).$(LINUX) .
endif

ifeq ($(shell uname), Darwin)
shared: clean
	cp $(LIB).$(OSX) .
endif

ifdef SYSTEMROOT
shared: clean
	cp $(LIB).$(WINDOWS) .
endif

clean: 
	rm -f libSPARSEAMA.*  
