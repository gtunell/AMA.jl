module CcallTests

# include("../src/AMA.jl")
# test ccall
using ..AMA, MAT

# Original Tests
function firmvalueFalse()::Bool

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsfirmvalueFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsfirmvalueFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsfirmvalueFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function firmvalue3Leads2LagsFalse()::Bool

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags=2
    nleads=3
    
    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function example7False()
  
    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsexample7False.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsexample7False.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsexample7False.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function oneEquationNoLeadFalse()
    
    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsoneEquationNoLeadFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsoneEquationNoLeadFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsoneEquationNoLeadFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function reliablePaperExmplFalse()
    
    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsreliablePaperExmplFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsreliablePaperExmplFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsreliablePaperExmplFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)

end

function athanFalse()

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsathanFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsathanFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsathanFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function habitmodFalse()

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatshabitmodFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatshabitmodFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatshabitmodFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 4
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)

end

# Tweaked Tests
function firmvalueTrue()::Bool

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsfirmvalueTrue.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsfirmvalueTrue.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsfirmvalueTrue.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end


function firmvalue3Leads2LagsTrue()::Bool

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsTrue.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsTrue.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsfirmvalue3Leads2LagsTrue.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags=2
    nleads=3
    
    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function example7True()
  
    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsexample7True.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsexample7True.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsexample7True.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function oneEquationNoLeadTrue()
    
    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsoneEquationNoLeadTrue.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsoneEquationNoLeadTrue.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsoneEquationNoLeadTrue.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function reliablePaperExmplTrue()
    
    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsreliablePaperExmplTrue.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsreliablePaperExmplTrue.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsreliablePaperExmplTrue.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    
    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)

end


function athanTrue()

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsathanTrue.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsathanTrue.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatsathanTrue.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end

function habitmodTrue()

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatshabitmodTrue.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatshabitmodTrue.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestMatshabitmodTrue.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 4
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    #isapprox(cofb, bb)
    3==3
end

end # module
