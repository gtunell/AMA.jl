module AMA
#http://www.stochasticlifestyle.com/finalizing-julia-package-documentation-testing-coverage-publishing/

#Import needed packages
include("shiftRight.jl")
import ShiftRight.shiftRight

#from https://juliabyexample.helpmanual.io/
"function to calculate the volume of a sphere"
function sphere_vol(r)
    return 4/3*pi*r^3
end


quadratic(a, sqr_term, b) = (-b + sqr_term) / 2a


# calculates x for 0 = a*x^2+b*x+c, arguments types can be defined in function definitions
function quadratic2(a::Float64, b::Float64, c::Float64)
    # unlike other languages 2a is equivalent to 2*a
    # a^2 is used instead of a**2 or pow(a,2)
    sqr_term = sqrt(b^2-4a*c)
    r1 = quadratic(a, sqr_term, b)
    r2 = quadratic(a, -sqr_term, b)
    # multiple values can be returned from a function using tuples
    # if the return keyword is omitted, the last term is returned
    r1, r2
end

export sphere_vol, quadratic, quadratic2, shiftRight

end # module
