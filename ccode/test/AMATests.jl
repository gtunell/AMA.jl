module AMATests

using MAT # extract files from Matlab

# make the C library visible for calls to C code use: make -f makefileJulia
Libdl.push!(Libdl.DL_LOAD_PATH,
                "/msu/home/m1gmt00/summer_project/AMA.jl/ccode/src")
const libSPARSEAMA = Libdl.find_library("libSPARSEAMA", Libdl.DL_LOAD_PATH)

# files to include
include("../callSparseAim.jl")
include("original/testFirmvalueFalse.jl")
include("original/testFirmvalue3Leads2LagsFalse.jl")
include("original/testExample7False.jl")
include("original/testOneEquationNoLeadFalse.jl")
include("original/testReliablePaperExmplFalse.jl")
include("original/testAthanFalse.jl")
include("original/testHabitmodFalse.jl")

include("tweaked/testFirmvalueTrue.jl")
include("tweaked/testFirmvalue3Leads2LagsTrue.jl")
#include("tweaked/testExample7True.jl")
#include("tweaked/testOneEquationNoLeadTrue.jl")
#include("tweaked/testReliablePaperExmplTrue.jl")
#include("tweaked/testAthanTrue.jl")
#include("tweaked/testHabitmodTrue.jl")

end # module 
