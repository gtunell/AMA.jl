"""
    numericShift(hh, qq, iq, qrows, qcols, neq, condn)

Compute the numeric shiftrights and store them in q.
"""
function numericShift!(hh::Array{Float64,2}, qq::Array{Float64,2}, iq::Int64, qRows::Int64, qCols::Int64, neq::Int64, condn::Float64) 

    nnumeric = 0
    left = 1:qCols
    right = qCols + 1:qCols + neq

    F = qrfact(hh[:, right])
    zerorows = abs.(diag(F[:R]))
    zerorows = find(x->(x::Float64 <= condn), zerorows)

    while (length(zerorows) != 0) && (iq <= qRows)
        hh = *(F[:Q]', hh)

        nz = size(zerorows, 1)

        qq[(iq + 1):(iq + nz), :] = hh[zerorows, left]

        hh[zerorows, :] = shiftRight!(hh[zerorows, :], neq)

        iq = iq + nz
        nnumeric = nnumeric + nz

        F = qrfact(hh[:, right])
        zerorows = abs.(diag(F[:R]))
        zerorows = find(x->(x::Float64 <= condn), zerorows)

    end # while
  

    return(hh, qq, iq, nnumeric)

end # numericShift

