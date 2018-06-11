module AMAFUNCS

"""
    exactShift(h, q, iq, qrows, qcols, neq)

Compute the exact shiftrights and store them in q.
"""
function exactShift(hh::Array{Float64,2}, qq::Array{Float64,2}, iq::Int64, qRows::Int64, qCols::Int64, neq::Int64) 

    nexact = 0
    left = hh[:, 1:qCols]
    right = hh[:, (qCols + 1):(qCols + neq)]
    
    zerorows = hh[:, size(right, 2)]'
    zerorows = abs.(zerorows)
    zerorows = sum(zerorows)
    zerorows = find(zerorows)

    Base.display(zerorows)
    
    while (any(zerorows)) # && (iq <= qRows))
        nz = length(zerorows)
        qq[(iq + 1):(iq + nz)] = hh[zerorows, left]
        hh[zerorows,:] = shiftRight(hh[zerorows, :], neq)
        iq = iq + nz

        zerorows = hh[:, size(right, 2)]'
        zerorows = abs(zerorows)
        zerorows = sum(zerorows)
        zerorows = find(zerorows)
    end # while

end # exactShift

end # module

