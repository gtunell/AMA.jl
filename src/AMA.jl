module AMAFUNCS
# http://www.stochasticlifestyle.com/finalizing-julia-package-documentation-testing-coverage-publishing/

#Import needed packages
include("shiftRight!.jl")
import AMAFUNCS.shiftRight!
#=
include("exactShift!.jl")
import AMAFUNCS.exactShift!
include("numericShift!.jl")
import AMAFUNCS.numericShift!
include("buildA!.jl")
import AMAFUNCS.buildA!
=#



end # module
