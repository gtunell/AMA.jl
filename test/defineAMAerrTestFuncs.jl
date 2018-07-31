module AMAerrTests

 include("../src/AMA.jl")
using .AMA

function noErrors()::Bool

    hh = [0.  0.   0.  0. -1.1  0.  0.  0.  1.  1.  0.  0.;
          0. -0.4  0.  0.  0.   1. -1.  0.  0.  0.  0.  0.;
          0.  0.   0.  0.  0.   0.  1.  0.  0.  0.  0.  0.;
          0.  0.   0. -1.  0.   0.  0.  1.  0.  0.  0.  0.]::Array{Float64, 2}

    e = "AMA: unique solution."
    
    (bnow,rtsnow,ia,nexact,nnumeric,lgroots,AMAcode) = 
        AMAalg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    AMAerr(AMAcode) == e
    
end # noErrors()

function tooManyRoots()::Bool

    hh = [0.  0.  0.  0. -1.1  0.  0.  0.  1.  1.  0.  0.;
          0.  4.  0.  0.  0.   1. -1.  0.  0.  0.  0.  0.;
          0.  0.  0.  0.  0.   0.  1.  0.  0.  0.  0.  0.;
          0.  0.  0. -1.  0.   0.  0.  1.  0.  0.  0.  0.]::Array{Float64, 2}

    e = "AMA: too many big roots."
    
    (bnow, rtsnow, ia, nexact, nnumeric, lgroots, AMAcode) =   
        AMAalg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    AMAerr(AMAcode) == e

end # tooManyRoots()

function tooFewRoots()::Bool

    hh = [0.  0.   0.  0. -0.9  0.  0.  0.  1.  1.  0.  0.;
          0. -0.4  0.  0.  0.   1. -1.  0.  0.  0.  0.  0.;
          0.  0.   0.  0.  0.   0.  1.  0.  0.  0.  0.  0.;
          0.  0.   0. -1.  0.   0.  0.  1.  0.  0.  0.  0.]::Array{Float64, 2}

    e = "AMA: too few big roots."
    
    (bnow, rtsnow, ia, nexact, nnumeric, lgroots, AMAcode) =   
        AMAalg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    AMAerr(AMAcode) == e
    
end # tooFewRoots()

function tooManyExactShifts()::Bool

    hh = [0.  0.   0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
          0. -0.4  0.  0.  0.  1. -1.  0.  0.  0.  0.  0.;
          0.  0.   0.  0.  0.  0.  1.  0.  0.  0.  0.  0.;
          0.  0.   0. -1.  0.  0.  0.  1.  0.  0.  0.  0.]::Array{Float64, 2}

    e = "AMA: too many exact shiftrights."

    (bnow, rtsnow, ia, nexact, nnumeric, lgroots, AMAcode) =   
        AMAalg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    AMAerr(AMAcode) == e
    
end # tooManyExactShifts()    


function tooManyNumericShifts()::Bool

    hh = [0.  0.  0.  0.  -2.2  0.  0.  0.  2.  2.  0.  0.;
          0.  0.  0.  0.  -1.1  0.  0.  0.  1.  1.  0.  0.;
          0.  0.  0.  0.  -1.1  0.  1.  0.  1.  1.  0.  0.;
          0.  0.  0. -1.  -1.1  0.  0.  1.  1.  1.  0.  0.]::Array{Float64, 2}

    e = "AMA: too many numeric shiftrights."
    
    (bnow, rtsnow, ia, nexact, nnumeric, lgroots, AMAcode) = 
        AMAalg(hh, 4, 1, 1, 1.0e-8, 1.0 + 1.0e-8)

    AMAerr(AMAcode) == e
    
end # tooManyNumericShifts()

function spurious()::Bool

    e = "AMAerr: return code not properly specified"

    AMAerr(975) == e

end # spurious

end # module
