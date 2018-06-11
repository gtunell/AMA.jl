module AMAFUNCS

include("shiftRight.jl")

"""
    exactShift(h, q, iq, qrows, qcols, neq)

Compute the exact shiftrights and store them in q.
"""
function exactShift!(hh::Array{Float64,2}, qq::Array{Float64,2}, iq::Int64, qRows::Int64, qCols::Int64, neq::Int64) 

    nexact = 0
    left = 1:qCols
    right = (qCols + 1):(qCols + neq)
    
    zerorows = hh[:, right]'
    zerorows = abs.(zerorows)
    zerorows = sum(zerorows, 1)
    zerorows = find(zerorows)

    while any(rowSum->(rowSum != 0), zerorows) && (iq <= qRows)
        nz = size(zerorows, 1)
        qq[(iq + 1):(iq + nz), :] = hh[zerorows, left]
        hh[zerorows,:] = AMAFUNCS.shiftRight!(hh[zerorows, :], neq)
        iq = iq + nz

        zerorows = hh[:, right]'
        zerorows = abs.(zerorows)
        zerorows = sum(zerorows)
        zerorows = find(zerorows)
    end # while

    return qq
    
end # exactShift

end # module
