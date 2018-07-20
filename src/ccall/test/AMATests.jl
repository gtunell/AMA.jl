module AMATests

using MAT

#const libSPARSEAMA = Libdl.find_library("libSPARSEAMA.so", Libdl.DL_LOAD_PATH)

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
include("tweaked/testExample7True.jl")
include("tweaked/testOneEquationNoLeadTrue.jl")
include("tweaked/testReliablePaperExmplTrue.jl")
include("tweaked/testAthanTrue.jl")
include("tweaked/testHabitmodTrue.jl")

end # module 
