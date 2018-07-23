function habitmodTrue()

    file = matopen(matDir*"amaAlgTestMatshabitmodTrue.mat")
    bb=read(file,"bb")
    bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
    close(file)

    file = matopen(matDir*"amaAlgTestMatshabitmodTrue.mat")
    rts=read(file,"rts")
    rts=if(typeof(rts)==(Array{Float64,2})) rts else hcat(rts) end
    close(file)

    file = matopen(matDir*"amaAlgTestMatshabitmodTrue.mat")
    hh=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)

    nlags = 4
    nleads = 1

    (hh, cofb, qmatrix, returnCode) = callSparseAim(hh, nleads, nlags)
print("here\n")
print(size(cofb),size(bb),returnCode)
print("here\n")
   display(bb) 
    isapprox(cofb, bb)

end
