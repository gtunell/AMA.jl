__precompile__()

module AMA
# http://www.stochasticlifestyle.com/finalizing-julia-package-documentation-testing-coverage-publishing/

# Set-up for callSparseAim
const lib = Libdl.dlopen(joinpath(dirname(@__FILE__), "..", "deps", "libSPARSEAMA"))
sym = Libdl.dlsym(lib, :callSparseAim)

# Include all files    
for (root, dirs, files) in walkdir(joinpath(dirname(@__FILE__), "AMA"))
    for file in files
        include(joinpath("AMA", file))
    end
end

#=
# Include relevant files
include("exactShift!.jl")
include("numericShift!.jl")
include("shiftRight!.jl")
include("buildA!.jl")
include("augmentQ!.jl")
include("eigenSys!.jl")
include("reducedForm.jl")
include("AMAalg.jl")
include("checkSpanning.jl")
include("deleteCols.jl")
include("deleteRows.jl")
include("callSparseAim.jl")
include("checkAMA.jl")
=#

# Export all functions
export exactShift!, numericShift!, shiftRight!, buildA!, augmentQ!, eigenSys!, reducedForm, AMAalg, sameSpan, deleteCols, deleteRows, callSparseAim, checkAMA

end # module
