module CSparseAMATests

using MAT

include("cSparseAMA.jl")
include("callSparseAim.jl")

function firmvalue()::Bool

    file = matopen("../test/matDir/"*"amaAlgTestMatsfirmvalueFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("../test/matDir/"*"amaAlgTestMatsfirmvalueFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("../test/matDir/"*"amaAlgTestMatsfirmvalueFalse.mat")
    hh=read(file,"hh")
    hBefore=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags = 1
    nleads = 1
    neq = size(hh, 1)

    (maxNumberOfHElements, newHmat, newHmatj, newHmati,
     auxiliaryInitialConditions, rowsInQ, qmat, qmatj, qmati,
     essential, rootr, rooti, returnCode) = cSparseAMA( hh, nlags, nleads )

    display(newHmat)
    display(newHmatj)
    display(newHmati)
    
    newHmat = Float64.(newHmat)
    newHmatj = Float64.(newHmatj)
    newHmati = Float64.(newHmati)
    
    display(hBefore)
    display(full(sparse(newHmati, newHmatj, newHmat)))

    
    true 
    
end

function firmvalue2()::Bool


    file = matopen("../test/matDir/"*"amaAlgTestMatsfirmvalueFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("../test/matDir/"*"amaAlgTestMatsfirmvalueFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("../test/matDir/"*"amaAlgTestMatsfirmvalueFalse.mat")
    hh=read(file,"hh")
    hBefore=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
    true
end

end # module
