# AMA - Anderson Moore Algorithm

*Release verison*:

*Build status*:

[![Build Status](https://travis-ci.org/es335mathwiz/AMA.jl.svg?branch=develop)](https://travis-ci.org/es335mathwiz/AMA.jl)
[![Build status](https://ci.appveyor.com/api/projects/status/kh7w0y6d1652t0by/branch/develop?svg=true)](https://ci.appveyor.com/project/GaryAnderson/ama-jl/branch/develop)
[![Coverage Status](https://coveralls.io/repos/es335mathwiz/AMA.jl/badge.svg?branch=develop&service=github)](https://coveralls.io/github/es335mathwiz/AMA.jl?branch=develop)
[![codecov.io](http://codecov.io/github/es335mathwiz/AMA.jl/coverage.svg?branch=develop)](http://codecov.io/github/es335mathwiz/AMA.jl?branch=master)

## Installion

To install AMA, use the package manager by typing:

'''Julia
Pkg.add("AMA")
'''

## Usage

There is fast and slightly faster way to use this algorithm to solve linear rational expectations models which we outline below. The former calls a Julia language implementation and the latter calls a C/Fortran implementation. To begin,

Load the module:

'''Julia
using AMA
'''

Declare the linear models to solve as:

'''Julia
h = [0.  0.  0.  0.  -1.1  0.  0.  0.  1.  1.  0.  0.;
     0.  -0.4  0.  0.  0.  1.  -1.  0.  0.  0.  0.  0.;
     0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.;
     0.  0.  0.  -1.  0.  0.  0.  1.  0.  0.  0.  0.]::Array{Float64,2}
'''

Set number of equations:

'''Julia
neq = 4
'''

Set number of lags and leads:

'''Julia
nlags = 1
nleads = 1
'''

Set a tolerance to calculate numeric shift and reduced form:

'''Julia
condn = 0.0000000001
'''

Finally, give an inclusive upper bound for modulus of roots allows in reduced form:

'''Julia
upperbnd = 1 + condn
'''

To execute the algorithm with Julia: 

'''Julia
AMAalg(h, neq, nlag, nlead, condn, upperbnd)
'''
*note* - the above returns a tuple containing (b, rts, ia, nexact, nnumeric, lgroots, AMAcode)
	b           Reduced form coefficient matrix.
	rts         Roots returned by eig.
	ia          Dimension of companion matrix.
	nexact      Number of exact shift rights.
	nnumeric    Number of numeric shift rights.
	lgroots     Number of roots greater in modulus than upper bound.
    AMAcode     Return code.

To execute the algorithm with C/Fortran:

'''Julia
callSparseAim(h, nleads, nlags)
'''

*note* - the above returns a tuple containing (h, b, q, AMAcode)
    h           The original h matrix after computations.
	b           Reduced form coefficient matrix.
    q           Asymptotic constraints
	AMAcode     Return code.

## More

For more information and an indepth analysis of the algorithm, please read the full Economic paper available [online](https://www.federalreserve.gov/pubs/feds/2010/201013/201013pap.pdf) written by [Gary S. Anderson](https://github.com/es335mathwiz).
