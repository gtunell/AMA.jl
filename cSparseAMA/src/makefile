FC= gfortran
FFLAGS= -g -c -O2
CC= gcc
CFLAGS= -g -c -O2

allCObjs=	   callSparseAim.o sparseAim.o sparskit2.o

allFortObjs=  dgetv0.o dlaqrb.o dmout.o dnaitr.o dnapps.o dnaup2.o dnaupd.o \
dnconv.o dneigh.o dneupd.o dngets.o dsortc.o dstatn.o dvout.o ivout.o \
ma50ad.o second.o  

allObjs= $(allFortObjs) $(allCObjs)

staticLink:	   $(allObjs)
		   ar rcs libSPARSEAMA.a $(allObjs)

clean: 
	rm -f *.o *.a

