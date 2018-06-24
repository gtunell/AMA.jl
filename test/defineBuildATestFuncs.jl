module BuildATests
import AMAFUNCS.buildA!
using MAT

#tweaked= False
# test buildA! firmvalue example
function firmvalueFalse()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,4,8)

ia=3::Int64

js=[5 6 8]::Array{Int64,2}

file = matopen(pwd()*"/"*"fc177477683993846.mat")
hForADense=read(file,"hForADense")
aa=read(file,"aa")
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;

#tweaked= False
# test buildA! firmvalue3Leads2Lags example
function firmvalue3Leads2LagsFalse()::Bool


neq=4::Int64;nlag=2::Int64;nlead=3::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,12,20)

ia=6::Int64

js=[9 13 14 17 18 20]::Array{Int64,2}

file = matopen(pwd()*"/"*"fc187477683995532.mat")
hForADense=read(file,"hForADense")
aa=read(file,"aa")
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;

#tweaked= False
# test buildA! example7 example
function example7False()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,4,8)

ia=3::Int64

js=[5 6 8]::Array{Int64,2}

file = matopen(pwd()*"/"*"fc197477683997170.mat")
hForADense=read(file,"hForADense")
aa=read(file,"aa")
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;

#tweaked= False
# test buildA! oneEquationNoLead example
function oneEquationNoLeadFalse()::Bool


neq=1::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,1,2)

ia=1::Int64

js=[2+0.0im]::Array{Int64,2}

file = matopen(pwd()*"/"*"fc207477683998979.mat")
hForADense=read(file,"hForADense")
aa=read(file,"aa")
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;

#tweaked= False
# test buildA! reliablePaperExmpl example
function reliablePaperExmplFalse()::Bool


neq=5::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,5,10)

ia=4::Int64

js=[6 8 9 10]::Array{Int64,2}

file = matopen(pwd()*"/"*"fc217477684000664.mat")
hForADense=read(file,"hForADense")
aa=read(file,"aa")
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;

#tweaked= False
# test buildA! athan example
function athanFalse()::Bool


neq=9::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,9,18)

ia=7::Int64

js=[1 10 11 12 13 14 18]::Array{Int64,2}

file = matopen(pwd()*"/"*"fc227477684002852.mat")
hForADense=read(file,"hForADense")
aa=read(file,"aa")
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;

#tweaked= False
# test buildA! habitmod example
function habitmodFalse()::Bool


neq=12::Int64;nlag=4::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,12,60)

ia=24::Int64

js=[13 15 16 17 25 27 28 29 37 39 40 41 49 50 51 52 53 54 55 56 57 58 59 60]::Array{Int64,2}

file = matopen(pwd()*"/"*"fc237477684004437.mat")
hForADense=read(file,"hForADense")
aa=read(file,"aa")
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;


end
