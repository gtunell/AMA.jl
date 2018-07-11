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

    (I, J, V) = findnz(hh)
    hmat = Float64.(V)
    hmatj = Int32.(J)
    hmati = Int32.(I)


    display(hh)

    
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

# display(hh)
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
         &hmat[], &hmatj[], &hmati[], 
         &newHmat[], &newHmatj[], &newHmati[], 
         &auxiliaryInitialConditions, &rowsInQ,
         &qmat[], &qmatj[], &qmati[],
         &essential, &rootr[], &rooti[],
         &returnCode, Void)

#display(hh)
    #return (maxNumberOfHElements)
end
