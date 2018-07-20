function oneEquationNoLeadFalse()
    
    file = matopen(matDir*"amaAlgTestMatsoneEquationNoLeadFalse.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(matDir*"amaAlgTestMatsoneEquationNoLeadFalse.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(matDir*"amaAlgTestMatsoneEquationNoLeadFalse.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 1
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)

    isapprox(cofb, bb)
end
