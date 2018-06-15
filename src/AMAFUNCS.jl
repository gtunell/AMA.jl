module AMAFUNCS
include("checkSpanning.jl")
include("shiftRight!.jl")
include("exactShift!.jl")
include("numericShift!.jl")
include("deleteRows.jl")
include("deleteCols.jl")
include("buildA!.jl")
include("eigenSys!.jl")
include("augmentQ!.jl")
include("reducedForm.jl")
include("AMAalg.jl")
end
