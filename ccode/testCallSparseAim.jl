module CSparseAMATests

using MAT

const lib1 = Libdl.find_library("libSPARSEAMA", Libdl.DL_LOAD_PATH)
# const lib1 = Libdl.find_library("libCombinedlib", Libdl.DL_LOAD_PATH)

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

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function firmvalue3Leads2Lags()::Bool

    file = matopen("../test/matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen("../test/matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen("../test/matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags=2
    nleads=3
    
    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

end # module
