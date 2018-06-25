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

file = matopen("./matDir/"*"fc107477800097413.mat")
hForADense=read(file,"hForADense")
chkA=read(file,"aa")
aa=if(typeof(chkA)==(Array{Float64,2})) chkA else hcat(chkA) end
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

file = matopen("./matDir/"*"fc117477800098751.mat")
hForADense=read(file,"hForADense")
chkA=read(file,"aa")
aa=if(typeof(chkA)==(Array{Float64,2})) chkA else hcat(chkA) end
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

file = matopen("./matDir/"*"fc127477800100063.mat")
hForADense=read(file,"hForADense")
chkA=read(file,"aa")
aa=if(typeof(chkA)==(Array{Float64,2})) chkA else hcat(chkA) end
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

js=hcat([2])::Array{Int64,2}

file = matopen("./matDir/"*"fc137477800101373.mat")
hForADense=read(file,"hForADense")
chkA=read(file,"aa")
aa=if(typeof(chkA)==(Array{Float64,2})) chkA else hcat(chkA) end
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

file = matopen("./matDir/"*"fc147477800102725.mat")
hForADense=read(file,"hForADense")
chkA=read(file,"aa")
aa=if(typeof(chkA)==(Array{Float64,2})) chkA else hcat(chkA) end
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

file = matopen("./matDir/"*"fc157477800104077.mat")
hForADense=read(file,"hForADense")
chkA=read(file,"aa")
aa=if(typeof(chkA)==(Array{Float64,2})) chkA else hcat(chkA) end
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

file = matopen("./matDir/"*"fc167477800105510.mat")
hForADense=read(file,"hForADense")
chkA=read(file,"aa")
aa=if(typeof(chkA)==(Array{Float64,2})) chkA else hcat(chkA) end
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;


#tweaked= True
# test buildA! firmvalue example
function firmvalueTrue()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,4,8)

ia=5::Int64

js=[2 4 5 6 8]::Array{Int64,2}

file = matopen("./matDir/"*"fc177477800311699.mat")
hForADense=read(file,"hForADense")
chkA=read(file,"aa")
aa=if(typeof(chkA)==(Array{Float64,2})) chkA else hcat(chkA) end
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;

#tweaked= True
# test buildA! firmvalue3Leads2Lags example
function firmvalue3Leads2LagsTrue()::Bool


neq=4::Int64;nlag=2::Int64;nlead=3::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,12,20)

ia=12::Int64

js=[2 6 8 9 10 12 13 14 16 17 18 20]::Array{Int64,2}

file = matopen("./matDir/"*"fc187477800313104.mat")
hForADense=read(file,"hForADense")
chkA=read(file,"aa")
aa=if(typeof(chkA)==(Array{Float64,2})) chkA else hcat(chkA) end
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;

#tweaked= True
# test buildA! example7 example
function example7True()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,4,8)

ia=5::Int64

js=[4 5 6 7 8]::Array{Int64,2}

file = matopen("./matDir/"*"fc197477800314525.mat")
hForADense=read(file,"hForADense")
chkA=read(file,"aa")
aa=if(typeof(chkA)==(Array{Float64,2})) chkA else hcat(chkA) end
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;

#tweaked= True
# test buildA! oneEquationNoLead example
function oneEquationNoLeadTrue()::Bool


neq=1::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,1,2)

ia=1::Int64

js=hcat([2])::Array{Int64,2}

file = matopen("./matDir/"*"fc207477800315954.mat")
hForADense=read(file,"hForADense")
chkA=read(file,"aa")
aa=if(typeof(chkA)==(Array{Float64,2})) chkA else hcat(chkA) end
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;

#tweaked= True
# test buildA! reliablePaperExmpl example
function reliablePaperExmplTrue()::Bool


neq=5::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,5,10)

ia=6::Int64

js=[4 6 7 8 9 10]::Array{Int64,2}

file = matopen("./matDir/"*"fc217477800317411.mat")
hForADense=read(file,"hForADense")
chkA=read(file,"aa")
aa=if(typeof(chkA)==(Array{Float64,2})) chkA else hcat(chkA) end
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;

#tweaked= True
# test buildA! athan example
function athanTrue()::Bool


neq=9::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,9,18)

ia=12::Int64

js=[1 2 3 4 9 10 11 12 13 14 16 18]::Array{Int64,2}

file = matopen("./matDir/"*"fc227477800318932.mat")
hForADense=read(file,"hForADense")
chkA=read(file,"aa")
aa=if(typeof(chkA)==(Array{Float64,2})) chkA else hcat(chkA) end
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;

#tweaked= True
# test buildA! habitmod example
function habitmodTrue()::Bool


neq=12::Int64;nlag=4::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,12,60)

ia=31::Int64

js=[1 3 4 5 13 15 16 17 25 27 28 29 37 38 39 40 41 43 48 49 50 51 52 53 54 55 56 57 58 59 60]::Array{Int64,2}

file = matopen("./matDir/"*"fc237477800320476.mat")
hForADense=read(file,"hForADense")
chkA=read(file,"aa")
aa=if(typeof(chkA)==(Array{Float64,2})) chkA else hcat(chkA) end
close(file)

(aaJulia,iaJulia,jsJulia)=buildA!(hForADense,qCols,neq)
isapprox(aaJulia,aa,rtol=0.1e-10::Float64,atol=0.0::Float64) &&
isequal(iaJulia,ia)&&
isequal(jsJulia,js)
end;


end
