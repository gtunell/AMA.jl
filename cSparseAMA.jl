function cSparseAMA(maxNumberOfHElements, discreteTime, hrows, hcols, leads,
         hmat, hmatj, newHmati, auxiliaryInitialConditions, rowsInQ,
         qmat, qmatj, qmati, essential, rootr, rooti, returnCode, aPointerToVoid)
    
    ccal((:sparseAim, "libSPARSEAMA"), Void,
         (Int32,Int32,Int32,Int32,Int32,Float64,Int32,
          Int32,Float64,Int32,Int32,Int32,Int32,Float64,
          Int32,Int32,Int32,Float64,Float64,Int32,Void),
         maxNumberOfHElements, discreteTime, hrows, hcols, leads,
         hmat, hmatj, newHmati, auxiliaryInitialConditions, rowsInQ,
         qmat, qmatj, qmati, essential, rootr, rooti, returnCode, aPointerToVoid)
end
