# AMA - Anderson Moore Algorithm

*Release verison*:

*Build status*:

[![Build Status](https://travis-ci.org/es335mathwiz/AMA.jl.svg?branch=develop)](https://travis-ci.org/es335mathwiz/AMA.jl)
[![Build status](https://ci.appveyor.com/api/projects/status/kh7w0y6d1652t0by/branch/develop?svg=true)](https://ci.appveyor.com/project/GaryAnderson/ama-jl/branch/develop)
[![Coverage Status](https://coveralls.io/repos/github/es335mathwiz/AMA.jl/badge.svg)](https://coveralls.io/github/es335mathwiz/AMA.jl)
[![Coverage Status](https://coveralls.io/repos/es335mathwiz/AMA.jl/badge.svg?branch=develop&service=github)](https://coveralls.io/github/es335mathwiz/AMA.jl?branch=develop)
[![codecov.io](http://codecov.io/github/es335mathwiz/AMA.jl/coverage.svg?branch=develop)](http://codecov.io/github/es335mathwiz/AMA.jl?branch=develop)

## Installion

To install AMA, use the package manager by typing:

```julia
Pkg.add("AMA")
```

## Usage

This algorithm solves linear rational expectations models. There is a fast and slightly faster use for this package outlined below. The former calls a julia language implementation and the latter calls a C/Fortran implementation. To begin,

Load the module:

```julia
using AMA
```

Declare the linear models to solve such as:

```julia
h = [0.  0.  0.  0.  -1.1  0.  0.  0.  1.  1.  0.  0.;
     0.  -0.4  0.  0.  0.  1.  -1.  0.  0.  0.  0.  0.;
     0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.;
     0.  0.  0.  -1.  0.  0.  0.  1.  0.  0.  0.  0.]::Array{Float64,2}
```

Set number of equations:

```julia
neq = 4
```

Set number of lags and leads:

```julia
nlags = 1
nleads = 1
```

Set a tolerance to calculate numeric shift and reduced form:

```julia
condn = 0.0000000001
```

Finally, give an inclusive upper bound for modulus of roots allowed in reduced form:

```julia
upperbnd = 1 + condn
```

To execute the algorithm with julia: 

```julia
(b, rts, ia, nexact, nnumeric, lgroots, AMAcode) =
     AMAalg(h, neq, nlag, nlead, condn, upperbnd)
```
*Note* - the above returns the tuple (b, rts, ia, nexact, nnumeric, lgroots, AMAcode)
<ul>
  <li>	b         -  Reduced form coefficient matrix.<br />                      </li>
  <li>	rts       -  Roots returned by eig.<br />                                </li>
  <li>	ia        -  Dimension of companion matrix.<br />                        </li>
  <li>	nexact    -  Number of exact shift rights.<br />                         </li>
  <li>	nnumeric  -  Number of numeric shift rights.<br />                       </li>
  <li>	lgroots   -  Number of roots greater in modulus than upper bound.<br />  </li>
  <li>  AMAcode   -  Return code.<br />                                          </li>
</ul>

To execute the algorithm with C/Fortran:

```julia
(h, b, q, AMAcode) = 
     callSparseAim(h, nleads, nlags)
```

*Note* - the above returns the tuple (h, b, q, AMAcode)<br />
<ul>
  <li>  h         -  The original h matrix after computations.<br />  </li>
  <li>	b         -  Reduced form coefficient matrix.<br />           </li>
  <li>  q         -  Asymptotic constraints.<br />                    </li>
  <li>	AMAcode   -  Return code.                                     </li>
</ul>

## More

For more information and an indepth analysis of the algorithm, please read the [full paper](https://www.federalreserve.gov/pubs/feds/2010/201013/201013pap.pdf) written by [Gary S. Anderson](https://github.com/es335mathwiz).
