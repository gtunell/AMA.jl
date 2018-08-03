default: shared

FC= gfortran
FFLAGS= -fPIC -c -O2
CC= gcc
CFLAGS= -fPIC -c -O2 
#linuxLibs = lapack_linux/liblapack.a lapack_linux/librefblas.a
osxLibs = lapack_osx/liblapack.a lapack_osx/librefblas.a

allCObjs= callSparseAim.o sparseAim.o sparskit2.o 

allFortObjs=  dgetv0.o dlaqrb.o dmout.o dnaitr.o dnapps.o dnaup2.o dnaupd.o \
dnconv.o dneigh.o dneupd.o dngets.o dsortc.o dstatn.o dvout.o ivout.o \
ma50ad.o 

allObjs= $(allCObjs) $(allFortObjs)

ifeq ($(shell uname), Linux)
shared: clean $(allObjs)
	$(FC) -shared $(allObjs) $(linuxLibs)  \
	 -o libSPARSEAMA.so
endif

ifeq ($(shell uname), Darwin)
shared: clean $(allObjs)
	$(FC) -dynamiclib $(allObjs) $(osxLibs)  \
	 -o libSPARSEAMA.dylib
endif	

clean: 
	rm -f *.o libSPARSEAMA.*
