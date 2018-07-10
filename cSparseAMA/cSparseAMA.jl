function cSparseAMA(maxNumberOfHElements, discreteTime, hrows, hcols, leads,
         hmat, hmatj, hmati, newHmat, newHmatj, newHmati,
         auxiliaryInitialConditions, rowsInQ, qmat, qmatj, qmati,
         essential, rootr, rooti, returnCode, aPointerToVoid)
    
    ccall((:sparseAim, "libSPARSEAMA"), Void,
         (Ref{Int32}, Int32, Int32, Int32, Int32,
          Ref{Float64}, Ref{Int32}, Ref{Int32}, Ref{Float64}, Ref{Int32}, Ref{Int32},
          Ref{Int32}, Ref{Int32}, Ref{Float64}, Ref{Int32}, Ref{Int32},
          Ref{Int32}, Ref{Float64}, Ref{Float64}, Ref{Int32}, Ref{Void}),
         maxNumberOfHElements, discreteTime, hrows, hcols, leads,
         hmat, hmatj, hmati, newHmat, newHmatj, newHmati,
         auxiliaryInitialConditions, rowsInQ, qmat, qmatj, qmati,
         essential, rootr, rooti, returnCode, aPointerToVoid)
end
