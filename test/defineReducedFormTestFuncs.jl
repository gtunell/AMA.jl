module ReducedFormTests

# include("../src/AMA.jl")
# test reducedForm
using ..AMA, MAT
#tweaked= True
# test reducedForm firmvalue example
function firmvalueTrue()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsfirmvalueTrue.mat")
bb=read(file,"bb")
bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
close(file)

file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsfirmvalueTrue.mat")
qFull=read(file,"qFinal")
qFull=if(typeof(qFull)==(Array{Float64,2})) qFull else hcat(qFull) end
close(file)

nonsing=true::Bool

qRows=4::Int64

qCols=8::Int64

bCols=4::Int64

anEpsi=0.0000000001::Float64

(nonsingJulia,bbJulia)=reducedForm(qFull,qRows,qCols,bCols,neq,anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
nonsingJulia==nonsing
end;

#tweaked= True
# test reducedForm firmvalue3Leads2Lags example
function firmvalue3Leads2LagsTrue()::Bool


neq=4::Int64;nlag=2::Int64;nlead=3::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsfirmvalue3Leads2LagsTrue.mat")
bb=read(file,"bb")
bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
close(file)

file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsfirmvalue3Leads2LagsTrue.mat")
qFull=read(file,"qFinal")
qFull=if(typeof(qFull)==(Array{Float64,2})) qFull else hcat(qFull) end
close(file)

nonsing=true::Bool

qRows=12::Int64

qCols=20::Int64

bCols=8::Int64

anEpsi=0.0000000001::Float64

(nonsingJulia,bbJulia)=reducedForm(qFull,qRows,qCols,bCols,neq,anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
nonsingJulia==nonsing
end;

#tweaked= True
# test reducedForm example7 example
function example7True()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsexample7True.mat")
bb=read(file,"bb")
bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
close(file)

file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsexample7True.mat")
qFull=read(file,"qFinal")
qFull=if(typeof(qFull)==(Array{Float64,2})) qFull else hcat(qFull) end
close(file)

nonsing=true::Bool

qRows=4::Int64

qCols=8::Int64

bCols=4::Int64

anEpsi=0.0000000001::Float64

(nonsingJulia,bbJulia)=reducedForm(qFull,qRows,qCols,bCols,neq,anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
nonsingJulia==nonsing
end;

#tweaked= True
# test reducedForm oneEquationNoLead example
function oneEquationNoLeadTrue()::Bool


neq=1::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsoneEquationNoLeadTrue.mat")
bb=read(file,"bb")
bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
close(file)

file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsoneEquationNoLeadTrue.mat")
qFull=read(file,"qFinal")
qFull=if(typeof(qFull)==(Array{Float64,2})) qFull else hcat(qFull) end
close(file)

nonsing=true::Bool

qRows=1::Int64

qCols=2::Int64

bCols=1::Int64

anEpsi=0.0000000001::Float64

(nonsingJulia,bbJulia)=reducedForm(qFull,qRows,qCols,bCols,neq,anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
nonsingJulia==nonsing
end;

#tweaked= True
# test reducedForm reliablePaperExmpl example
function reliablePaperExmplTrue()::Bool


neq=5::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsreliablePaperExmplTrue.mat")
bb=read(file,"bb")
bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
close(file)

file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsreliablePaperExmplTrue.mat")
qFull=read(file,"qFinal")
qFull=if(typeof(qFull)==(Array{Float64,2})) qFull else hcat(qFull) end
close(file)

nonsing=true::Bool

qRows=5::Int64

qCols=10::Int64

bCols=5::Int64

anEpsi=0.0000000001::Float64

(nonsingJulia,bbJulia)=reducedForm(qFull,qRows,qCols,bCols,neq,anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
nonsingJulia==nonsing
end;

#tweaked= True
# test reducedForm athan example
function athanTrue()::Bool


neq=9::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsathanTrue.mat")
bb=read(file,"bb")
bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
close(file)

file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsathanTrue.mat")
qFull=read(file,"qFinal")
qFull=if(typeof(qFull)==(Array{Float64,2})) qFull else hcat(qFull) end
close(file)

nonsing=true::Bool

qRows=9::Int64

qCols=18::Int64

bCols=9::Int64

anEpsi=0.0000000001::Float64

(nonsingJulia,bbJulia)=reducedForm(qFull,qRows,qCols,bCols,neq,anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
nonsingJulia==nonsing
end;

#tweaked= True
# test reducedForm habitmod example
function habitmodTrue()::Bool


neq=12::Int64;nlag=4::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatshabitmodTrue.mat")
bb=read(file,"bb")
bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
close(file)

file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatshabitmodTrue.mat")
qFull=read(file,"qFinal")
qFull=if(typeof(qFull)==(Array{Float64,2})) qFull else hcat(qFull) end
close(file)

nonsing=true::Bool

qRows=12::Int64

qCols=60::Int64

bCols=48::Int64

anEpsi=0.0000000001::Float64

(nonsingJulia,bbJulia)=reducedForm(qFull,qRows,qCols,bCols,neq,anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
nonsingJulia==nonsing
end;

#tweaked= False
# test reducedForm firmvalue example
function firmvalueFalse()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsfirmvalueFalse.mat")
bb=read(file,"bb")
bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
close(file)

file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsfirmvalueFalse.mat")
qFull=read(file,"qFinal")
qFull=if(typeof(qFull)==(Array{Float64,2})) qFull else hcat(qFull) end
close(file)

nonsing=true::Bool

qRows=4::Int64

qCols=8::Int64

bCols=4::Int64

anEpsi=0.0000000001::Float64

(nonsingJulia,bbJulia)=reducedForm(qFull,qRows,qCols,bCols,neq,anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
nonsingJulia==nonsing
end;

#tweaked= False
# test reducedForm firmvalue3Leads2Lags example
function firmvalue3Leads2LagsFalse()::Bool


neq=4::Int64;nlag=2::Int64;nlead=3::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsfirmvalue3Leads2LagsFalse.mat")
bb=read(file,"bb")
bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
close(file)

file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsfirmvalue3Leads2LagsFalse.mat")
qFull=read(file,"qFinal")
qFull=if(typeof(qFull)==(Array{Float64,2})) qFull else hcat(qFull) end
close(file)

nonsing=true::Bool

qRows=12::Int64

qCols=20::Int64

bCols=8::Int64

anEpsi=0.0000000001::Float64

(nonsingJulia,bbJulia)=reducedForm(qFull,qRows,qCols,bCols,neq,anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
nonsingJulia==nonsing
end;

#tweaked= False
# test reducedForm example7 example
function example7False()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsexample7False.mat")
bb=read(file,"bb")
bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
close(file)

file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsexample7False.mat")
qFull=read(file,"qFinal")
qFull=if(typeof(qFull)==(Array{Float64,2})) qFull else hcat(qFull) end
close(file)

nonsing=true::Bool

qRows=4::Int64

qCols=8::Int64

bCols=4::Int64

anEpsi=0.0000000001::Float64

(nonsingJulia,bbJulia)=reducedForm(qFull,qRows,qCols,bCols,neq,anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
nonsingJulia==nonsing
end;

#tweaked= False
# test reducedForm oneEquationNoLead example
function oneEquationNoLeadFalse()::Bool


neq=1::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsoneEquationNoLeadFalse.mat")
bb=read(file,"bb")
bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
close(file)

file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsoneEquationNoLeadFalse.mat")
qFull=read(file,"qFinal")
qFull=if(typeof(qFull)==(Array{Float64,2})) qFull else hcat(qFull) end
close(file)

nonsing=true::Bool

qRows=1::Int64

qCols=2::Int64

bCols=1::Int64

anEpsi=0.0000000001::Float64

(nonsingJulia,bbJulia)=reducedForm(qFull,qRows,qCols,bCols,neq,anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
nonsingJulia==nonsing
end;

#tweaked= False
# test reducedForm reliablePaperExmpl example
function reliablePaperExmplFalse()::Bool


neq=5::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsreliablePaperExmplFalse.mat")
bb=read(file,"bb")
bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
close(file)

file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsreliablePaperExmplFalse.mat")
qFull=read(file,"qFinal")
qFull=if(typeof(qFull)==(Array{Float64,2})) qFull else hcat(qFull) end
close(file)

nonsing=true::Bool

qRows=5::Int64

qCols=10::Int64

bCols=5::Int64

anEpsi=0.0000000001::Float64

(nonsingJulia,bbJulia)=reducedForm(qFull,qRows,qCols,bCols,neq,anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
nonsingJulia==nonsing
end;

#tweaked= False
# test reducedForm athan example
function athanFalse()::Bool


neq=9::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsathanFalse.mat")
bb=read(file,"bb")
bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
close(file)

file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatsathanFalse.mat")
qFull=read(file,"qFinal")
qFull=if(typeof(qFull)==(Array{Float64,2})) qFull else hcat(qFull) end
close(file)

nonsing=true::Bool

qRows=9::Int64

qCols=18::Int64

bCols=9::Int64

anEpsi=0.0000000001::Float64

(nonsingJulia,bbJulia)=reducedForm(qFull,qRows,qCols,bCols,neq,anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
nonsingJulia==nonsing
end;

#tweaked= False
# test reducedForm habitmod example
function habitmodFalse()::Bool


neq=12::Int64;nlag=4::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatshabitmodFalse.mat")
bb=read(file,"bb")
bb=if(typeof(bb)==(Array{Float64,2})) bb else hcat(bb) end
close(file)

file = matopen(dirname(@__FILE__)*"/matDir/"*"reducedFormTestMatshabitmodFalse.mat")
qFull=read(file,"qFinal")
qFull=if(typeof(qFull)==(Array{Float64,2})) qFull else hcat(qFull) end
close(file)

nonsing=true::Bool

qRows=12::Int64

qCols=60::Int64

bCols=48::Int64

anEpsi=0.0000000001::Float64

(nonsingJulia,bbJulia)=reducedForm(qFull,qRows,qCols,bCols,neq,anEpsi)
isapprox(bbJulia,bb,rtol=0.1e-10::Float64,atol=0.0::Float64)&&
nonsingJulia==nonsing
end;


end
