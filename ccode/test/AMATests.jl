module AMATests

using MAT # extract files from Matlab

# make the C library visible for calls to C code 
Libdl.push!(Libdl.DL_LOAD_PATH,
                "/msu/home/m1gmt00/summer_project/AMA.jl/ccode/src")
const libSPARSEAMA = Libdl.find_library("libSPARSEAMA", Libdl.DL_LOAD_PATH)

# files to include
include("../callSparseAim.jl")
include("testFirmvalue.jl")
include("testFirmvalue3Leads2Lags.jl")
include("testExample7.jl")
include("testOneEquationNoLead.jl")
include("testReliablePaperExmpl.jl")
include("testAthan.jl")
include("testHabitmod.jl")

end # module 
