module AMAalgTests

# include("../src/AMA.jl")
# test AMAalg
using ..AMA, MAT
    
#tweaked= False
# test AMAalg firmvalueFalse example
function firmvalueFalse()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


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
checkH=read(file,"hh")
hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
close(file)

ia=3::Int64

nex=3::Int64

nnum=0::Int64

lgrts=1::Int64

AMAcode=1::Int64

anEpsi=0.0000000001::Float64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)

print("firmvalue false ");checkAMA(neq, nlag, nlead, checkH, bbJulia)
    
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
isapprox(rtsJulia,rts,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

#tweaked= False
# test AMAalg firmvalue3Leads2LagsFalse example
function firmvalue3Leads2LagsFalse()::Bool


neq=4::Int64;nlag=2::Int64;nlead=3::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


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

ia=6::Int64

nex=9::Int64

nnum=0::Int64

lgrts=3::Int64

AMAcode=1::Int64

anEpsi=0.0000000001::Float64
(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)

isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
#transition matrix has three eigenvalues of equal magnitude two complex matlab orders them differently than  julia so just checking the magnitudes
isapprox(abs.(rtsJulia[1:lgrts,1]),abs.(rts[1:lgrts,1]),rtol=0.1e-10::Float64,atol=0.0::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

#tweaked= False
# test AMAalg example7False example
function example7False()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


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

ia=3::Int64

nex=2::Int64

nnum=0::Int64

lgrts=2::Int64

AMAcode=1::Int64

anEpsi=0.0000000001::Float64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
isapprox(rtsJulia,rts,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

#tweaked= False
# test AMAalg oneEquationNoLeadFalse example
function oneEquationNoLeadFalse()::Bool


neq=1::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


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

ia=1::Int64

nex=1::Int64

nnum=0::Int64

lgrts=0::Int64

AMAcode=1::Int64

anEpsi=0.0000000001::Float64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
isapprox(rtsJulia,rts,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

#tweaked= False
# test AMAalg reliablePaperExmplFalse example
function reliablePaperExmplFalse()::Bool


neq=5::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


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

ia=4::Int64

nex=3::Int64

nnum=0::Int64

lgrts=2::Int64

AMAcode=1::Int64

anEpsi=0.0000000001::Float64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
isapprox(rtsJulia,rts,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

#tweaked= False
# test AMAalg athanFalse example
function athanFalse()::Bool


neq=9::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


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

ia=7::Int64

nex=8::Int64

nnum=0::Int64

lgrts=1::Int64

AMAcode=1::Int64

anEpsi=0.0000000001::Float64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
isapprox(rtsJulia,rts,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

#tweaked= False
# test AMAalg habitmodFalse example
function habitmodFalse()::Bool


neq=12::Int64;nlag=4::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


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

ia=24::Int64

nex=7::Int64

nnum=0::Int64

lgrts=5::Int64

AMAcode=1::Int64

anEpsi=0.0000000001::Float64
(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)

#print("done\n")    
#print("\n")
#print(norm(bbJulia-bb))
#print("\n")
#print(bbJulia)
#print("\n")

print("Habitmod False ");res = checkAMA(neq, nlag, nlead, hh, bbJulia)
 

#isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
#isapprox(rtsJulia[1:lgrts],rts[1:lgrts],rtol=0.1e-10::Float64,atol=0.0::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

#tweaked= True
# test AMAalg firmvalueTrue example
function firmvalueTrue()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


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

ia=5::Int64

nex=0::Int64

nnum=3::Int64

lgrts=1::Int64

AMAcode=1::Int64

anEpsi=0.0000000001::Float64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
isapprox(rtsJulia,rts,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

#tweaked= True
# test AMAalg firmvalue3Leads2LagsTrue example
function firmvalue3Leads2LagsTrue()::Bool


neq=4::Int64;nlag=2::Int64;nlead=3::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


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

ia=12::Int64

nex=0::Int64

nnum=9::Int64

lgrts=3::Int64

AMAcode=1::Int64

anEpsi=0.0000000001::Float64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)  
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
#transition matrix has three eigenvalues of equal magnitude two complex matlab orders them differently than  julia so just checking the magnitudes
isapprox(abs.(rtsJulia[1:lgrts,1]),abs.(rts[1:lgrts,1]),rtol=0.1e-10::Float64,atol=0.0::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

#tweaked= True
# test AMAalg example7True example
function example7True()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


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

ia=5::Int64

nex=0::Int64

nnum=2::Int64

lgrts=2::Int64

AMAcode=1::Int64

anEpsi=0.0000000001::Float64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
isapprox(rtsJulia,rts,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

#tweaked= True
# test AMAalg oneEquationNoLeadTrue example
function oneEquationNoLeadTrue()::Bool


neq=1::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


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

ia=1::Int64

nex=1::Int64

nnum=0::Int64

lgrts=0::Int64

AMAcode=1::Int64

anEpsi=0.0000000001::Float64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
isapprox(rtsJulia,rts,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

#tweaked= True
# test AMAalg reliablePaperExmplTrue example
function reliablePaperExmplTrue()::Bool


neq=5::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


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

ia=6::Int64

nex=0::Int64

nnum=3::Int64

lgrts=2::Int64

AMAcode=1::Int64

anEpsi=0.0000000001::Float64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
isapprox(rtsJulia,rts,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

#tweaked= True
# test AMAalg athanTrue example
function athanTrue()::Bool


neq=9::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


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

ia=12::Int64

nex=0::Int64

nnum=8::Int64

lgrts=1::Int64

AMAcode=1::Int64

anEpsi=0.0000000001::Float64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
isapprox(rtsJulia[1:lgrts],rts[1:lgrts],rtol=0.1e-10::Float64,atol=0.0::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

#tweaked= True
# test AMAalg habitmodTrue example
function habitmodTrue()::Bool


neq=12::Int64;nlag=4::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


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
checkH=read(file,"hh")
hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
close(file)

ia=31::Int64

nex=0::Int64

nnum=7::Int64

lgrts=6::Int64

AMAcode=3::Int64

anEpsi=0.0000000001::Float64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)

#print("\n")
#print(norm(bbJulia-bb))
#print("\n")

print("Habitmod True ");

(q, err) = checkAMA(neq, nlag, nlead, checkH, bbJulia)
    
#isapprox(bbJulia,bb,rtol=0.1e-7::Float64,atol=0.0::Float64)&&
#isapprox(rtsJulia[1:lgrts],rts[1:lgrts],rtol=0.1e-10::Float64,atol=0.0::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;


#=
#tweaked= True
# test AMAalg habitmodTrue example
function habitmodTrue()::Bool
    neq=12::Int64;nlag=4::Int64;nlead=1::Int64
    qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64
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
    checkH=read(file,"hh")
    hh=if(typeof(hh)==(Array{Float64,2})) hh else hcat(hh) end
    close(file)
    ia=31::Int64
    nex=0::Int64
    nnum=7::Int64
    lgrts=6::Int64
    AMAcode=3::Int64
    anEpsi=0.0000000001::Float64
    (bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) =
        AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)
    #print("\n")
    #print(norm(bbJulia-bb))
    #print("\n")
    checkAMA(neq, nlag, nlead, checkH, bbJulia)
    #file = matopen(dirname(@__FILE__)"/matDir/"*"amaAlgTestOutMatshabitmodTrue.mat","w")
    matwrite(dirname(@__FILE__)*"/matDir/"*"amaAlgTestOutMatshabitmodTrue.mat",Dict("bbJulia"=>bbJulia,"hh"=>hh))

        file = matopen(dirname(@__FILE__)*"/matDir/"*"amaAlgTestOutMatshabitmodTrue.mat")
        hh = read(file,"hh")
        bbJulia = read(file,"bbJulia")
        (qq,err) = checkAMA(12,4,1,hh,bbJulia)
        isapprox(err, 0)&&
        iaJulia==ia&&
        nexJulia==nex&&
        nnumJulia==nnum&&
        iaJulia==ia
    
end;
=#

end
