"""
    eigenSys!(h, qcols, neq)

Compute the roots and the left eigenvectors of the companion
matrix, sort the roots from large-to-small, and sort the
eigenvectors conformably.  Map the eigenvectors into the real
domain. Count the roots bigger than uprbnd.
"""
function eigenSys!(aa::Array{Float64,2}, upperbound::Float64, rowsLeft::Int64) 

    (rts, ww)   = eig(aa')
    mag        = abs.(rts)
    indices  = sortperm(-mag)
    rts        = rts[indices]
    ww         = ww[:, indices]


    #  Given a complex conjugate pair of vectors W = [w1,w2], there is a
    #  nonsingular matrix D such that W*D = real(W) + imag(W).  That is to
    #  say, W and real(W)+imag(W) span the same subspace, which is all
    #  that AMA cares about. 

    ww = real(ww) + imag(ww)
    lgroots = abs.(rts)
    lgroots = find(x->(x > upperbound), lgroots)
    lgroots = length(lgroots)

    return (ww, rts, lgroots)

end # eigenSys!

