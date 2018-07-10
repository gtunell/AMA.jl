module CSparseAMATests

using MAT

include("cSparseAMA.jl")

function firmvalue()::Bool

    file = matopen("../test/matDir/"*"amaAlgTestMatsfirmvalueFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 1
    nleads = 1
    neq = size(hh, 1)
    

    cSparseAMA( hh, nlags, nleads )
    
    #====
    cSparseAMA( maxNumberOfHElements, discreteTime, hrows, hcols, leads,
         hmat, hmatj, hmati, newHmat, newHmatj, newHmati,
         auxiliaryInitialConditions, rowsInQ, qmat, qmatj, qmati,
         essential, rootr, rooti, returnCode, aPointerToVoid )
    ===#    
end

end # module
