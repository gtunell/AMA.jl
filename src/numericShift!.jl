"""
    numericShift(hh, qq, iq, qrows, qcols, neq, condn)

Compute the numeric shiftrights and store them in q.
"""
function numericShift!(hh::Array{Float64,2}, qq::Array{Float64,2}, iq::Int64, qrows::Int64, qcols::Int64, neq::Int64, condn::Float64) 

    nnumeric = 0
    left = 1:qcols
    right = qcols + 1:qcols + neq

    (Q, R, E) = qr( hh[:, right] )
    #=
    zerorows = abs.(diagm(R))
    zerorows = find(x->(x <= 10^-10), zerorows)

    display(zerorows)
    
=#

end # numericShift

