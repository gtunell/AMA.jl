module AMA
# http://www.stochasticlifestyle.com/finalizing-julia-package-documentation-testing-coverage-publishing/

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

# Export all functions
export exactShift!, numericShift!, shiftRight!, buildA!, augmentQ!, eigenSys!, reducedForm, AMAalg, sameSpan, deleteCols, deleteRows

end # module
