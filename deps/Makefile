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
else ifeq ($(shell uname), Darwin)
shared: clean
	cp $(LIB).$(OSX) .
else
shared: clean
	cp $(LIB).$(WINDOWS) .
endif

clean: 
	rm -f libSPARSEAMA.*  
