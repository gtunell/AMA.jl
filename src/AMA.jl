__precompile__()

module AMA
# http://www.stochasticlifestyle.com/finalizing-julia-package-documentation-testing-coverage-publishing/

# Set-up for callSparseAim
const lib = Libdl.dlopen(normpath(joinpath(dirname(@__FILE__), "..", "deps", "libSPARSEAMA")))
const sym = Libdl.dlsym(lib, :callSparseAim)

# Include all files    
for (_, _, files) in walkdir(joinpath(dirname(@__FILE__), "AMA"))
    for file in files
        include(joinpath("AMA", file))
    end
end

# Export all functions
export exactShift!, numericShift!, shiftRight!, buildA!, augmentQ!, eigenSys!, reducedForm, AMAalg, sameSpan, deleteCols, deleteRows, callSparseAim, checkAMA, AMAerr

end # module
