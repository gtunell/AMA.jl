"""
    callSParseAim(hh, leads, lags)

Julia wrapper function that calls the c function callSparseAim.
"""
function callSparseAim( hh, leads, lags )

    neq = size(hh, 1)
    nstate = 0
    hrows = neq
    hcols = size(hh, 2)
    qmax = length(hh)
    returnCodePointer = 0
    cofb = zeros(neq, neq * leads)
    qmatrix = zeros(neq, hcols)
    #cofb = zeros(hrows, hcols)
    #qmatrix = zeros(hrows, hcols)

    ccall((:callSparseAim, libSPARSEAMA), Void,
          (  Ptr{Float64}, Int32, Int32, Int32, Int32,
          Int32, Int32, Int32,
          Ptr{Float64}, Ptr{Float64}, Ptr{Float64}  ),
          hh, hrows, hcols, neq, leads, lags, nstate,
          qmax, &returnCodePointer, cofb, qmatrix)
    
    return hh, cofb, qmatrix, returnCodePointer
end
