module CSparseAMATests

using MAT

include("cSparseAMA.jl")

function firmvalue()::Bool

    file = matopen("./test/matDir/"*"amaAlgTestMatsfirmvalueFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 1
    nleads = 1
    neq = size(hh, 1)
    qmax = length(hh)
    qcols = neq*(nlags+nleads)
    
    maxNumberOfHElements = convert(Ref{Int32}, length(hh))
    discreteTime = convert(Int32, 1)
    hrows = convert(Int32, size(hh, 1))
    hcols = convert(Int32, size(hh, 2))
    leads = convert(Int32, 1)

    # (I, J, V) = findnz(hh)
    hmat = convert(Ref{Float64}, zeros(qmax))
    hmatj = convert(Ref{Int32}, trunc.(Int32, zeros(qmax)))
    hmati = convert(Ref{Int32}, trunc.(Int32, zeros(size(hh, 1) + 1)))

    newHmat = convert(Ref{Float64}, zeros(qmax))
    newHmatj = convert(Ref{Int32}, trunc.(Int32, zeros(qmax)))
    newHmati = convert(Ref{Int32}, trunc.(Int32, zeros(hrows + 1)))
    
    auxiliaryInitialConditions = convert(Ref{Int32}, 0)
    rowsInQ = convert(Ref{Int32}, 0)
    
    qmat = convert(Ref{Float64}, zeros(qmax))
    qmatj = convert(Ref{Int32}, trunc.(Int32, zeros(qmax)))
    qmati = convert(Ref{Int32}, trunc.(Int32, zeros(hrows*(nleads+nlags+1)+1)))
    
    rootr = convert(Ref{Float64}, zeros(qcols))
    rooti = convert(Ref{Float64}, zeros(qcols))
    essential = convert(Ref{Int32}, qcols)
    
    returnCode = convert(Ref{Int32}, 0)
    aPointerToVoid = nothing
     

    cSparseAMA( maxNumberOfHElements, discreteTime, hrows, hcols, leads,
         hmat, hmatj, hmati, newHmat, newHmatj, newHmati,
         auxiliaryInitialConditions, rowsInQ, qmat, qmatj, qmati,
         essential, rootr, rooti, returnCode, aPointerToVoid )
end

end # module
