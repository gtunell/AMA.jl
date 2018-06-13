"""
    exactShift!(h, q, iq, qrows, qcols, neq)

Compute the exact shiftrights and store them in q.
"""
function exactShift!(hh::Array{Float64,2}, qq::Array{Float64,2}, iq::Int64, qRows::Int64, qCols::Int64, neq::Int64) 

    nexact = 0
    left = 1:qCols
    right = (qCols + 1):(qCols + neq)
    
    zerorows = hh[:, right]'    # MAY NEED TO ADD APOSTROPHE HERE

    zerorows = abs.(zerorows)

    zerorows = sum(zerorows, 1)
       
    zerorows = find(row->(row == 0), zerorows)

    while length(zerorows) != 0 && (iq <= qRows) # any(rowSum->(rowSum != 0), zerorows) 
        nz = size(zerorows, 1)
        nexact = nexact + nz
        qq[(iq + 1):(iq + nz), :] = hh[zerorows, left]
        hh[zerorows,:] = shiftRight!(hh[zerorows, :], neq)
        iq = iq + nz

        zerorows = hh[:, right]'
        zerorows = abs.(zerorows)
        zerorows = sum(zerorows, 1)
        zerorows = find(row->(row == 0), zerorows)
    end # while
    
    return (hh, qq, iq, nexact)   #qq
    
end # exactShift

