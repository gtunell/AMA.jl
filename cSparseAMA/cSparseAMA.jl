push!(Libdl.DL_LOAD_PATH,
      "/msu/home/m1gmt00/summer_project/AMA.jl/cSparseAMA/src")

function cSparseAMA( hh, nlags, nleads )

    neq = size(hh, 1)
    qmax = length(hh)
    qcols = neq*(nlags+nleads)
    
    maxNumberOfHElements = length(hh)
    discreteTime = 1
    hrows = size(hh, 1)
    hcols = size(hh, 2)

    sparseH = sparse(hh')
    hmat = Float64.(nonzeros(sparseH))
    hmatj = Int32.(rowvals(sparseH))
    hmati = Array{Int32, 1}(hrows + 1)
    for index in 1:hrows
        hmati[index] = nzrange(sparseH, index)[1]
    end
    hmati[hrows + 1] = hmati[1] + length(hmat)
  
    newHmat = zeros(qmax)
    newHmatj = zeros(qmax)
    newHmati = zeros(hrows + 1)
    
    auxiliaryInitialConditions = 0
    rowsInQ = 0
    
    qmat = zeros(qmax)
    qmatj = zeros(qmax)
    qmati = zeros(hrows*(nleads+nlags+1)+1)
    
    rootr = zeros(qcols)
    rooti = zeros(qcols)
    essential = qcols
    
    returnCode = 0
    aPointerToVoid = Ref{Ptr{Void}}()

    ptrMaxNumberOfHElements = Ptr{Int32}(maxNumberOfHElements)
    ptrAuxiliaryInitialConditions = Ref{Ptr{Int32}(auxiliaryInitialConditions)}
    ptrRowsInQ = Ref{Ptr{Int32}(rowsInQ)}
    ptrEssential = Ref{Ptr{Int32}(essential)}
    ptrReturnCode = Ref{Ptr{Int32}(returnCode)}

    ccall((:sparseAim, "libSPARSEAMA"), Void,
         (  Ptr{Int32}, Int32,
            Int32, Int32, Int32,
            Ptr{Float64}, Ptr{Int32}, Ptr{Int32}, # points to mem of first ele
            Ptr{Float64}, Ptr{Int32}, Ptr{Int32}, # points to mem of first ele
            Ptr{Int32}, Ptr{Int32},
            Ptr{Float64}, Ptr{Int32}, Ptr{Int32},
            Ptr{Int32}, Ptr{Float64}, Ptr{Float64}, Ptr{Int32}, Any  ),
         &maxNumberOfHElements, Int32(discreteTime),
         Int32(hrows), Int32(hcols), Int32(nleads),
         hmat, hmatj, hmati, 
         newHmat, newHmatj, newHmati, 
         &auxiliaryInitialConditions, &rowsInQ,
         qmat, qmatj, qmati,
         &essential, rootr, rooti,
         &returnCode, Void)

#display(hh)
    #return (maxNumberOfHElements)
end
