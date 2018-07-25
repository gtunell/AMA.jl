module AMA
# http://www.stochasticlifestyle.com/finalizing-julia-package-documentation-testing-coverage-publishing/

# Include relevant files
include("AMA/exactShift!.jl")
include("AMA/numericShift!.jl")
include("AMA/shiftRight!.jl")
include("AMA/buildA!.jl")
include("AMA/augmentQ!.jl")
include("AMA/eigenSys!.jl")
include("AMA/reducedForm.jl")
include("AMA/AMAalg.jl")
include("AMA/checkSpanning.jl")
include("AMA/deleteCols.jl")
include("AMA/deleteRows.jl")
include("AMA/ccall/callSparseAim.jl")
include("AMA/checkAMA.jl")

# Export all functions
export exactShift!, numericShift!, shiftRight!, buildA!, augmentQ!, eigenSys!, reducedForm, AMAalg, sameSpan, deleteCols, deleteRows, checkAMA

end # module
