module NumericShiftTests

include("../src/AMA.jl")
using .AMA, MAT

 #tweaked= True
# test numericShift! firmvalue example
function firmvalueTrue()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,4,8)

file = matopen("./matDir/"*"fc107479366346678.mat")
hhIn=read(file,"hh")
hNewMatlab=read(file,"hNewFull")
qNewMatlab=read(file,"qNewFull")
close(file)

condn=0.0000000001::Float64

iqNewMatlab=3

nnumericMatlab=3

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&
sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;

#tweaked= True
# test numericShift! firmvalue3Leads2Lags example
function firmvalue3Leads2LagsTrue()::Bool


neq=4::Int64;nlag=2::Int64;nlead=3::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,12,20)

file = matopen("./matDir/"*"fc117479366348213.mat")
hhIn=read(file,"hh")
hNewMatlab=read(file,"hNewFull")
qNewMatlab=read(file,"qNewFull")
close(file)

condn=0.0000000001::Float64

iqNewMatlab=9

nnumericMatlab=9

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&
sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;

#tweaked= True
# test numericShift! example7 example
function example7True()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,4,8)

file = matopen("./matDir/"*"fc127479366349610.mat")
hhIn=read(file,"hh")
hNewMatlab=read(file,"hNewFull")
qNewMatlab=read(file,"qNewFull")
close(file)

condn=0.0000000001::Float64

iqNewMatlab=2

nnumericMatlab=2

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&
sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;

#tweaked= True
# test numericShift! oneEquationNoLead example
function oneEquationNoLeadTrue()::Bool


neq=1::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,1,2)

file = matopen("./matDir/"*"fc137479366351125.mat")
hhIn=read(file,"hh")
hNewMatlab=read(file,"hNewFull")
qNewMatlab=read(file,"qNewFull")
close(file)

condn=0.0000000001::Float64

iqNewMatlab=1

nnumericMatlab=1

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&
sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;

#tweaked= True
# test numericShift! reliablePaperExmpl example
function reliablePaperExmplTrue()::Bool


neq=5::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,5,10)

file = matopen("./matDir/"*"fc147479366352768.mat")
hhIn=read(file,"hh")
hNewMatlab=read(file,"hNewFull")
qNewMatlab=read(file,"qNewFull")
close(file)

condn=0.0000000001::Float64

iqNewMatlab=3

nnumericMatlab=3

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&
sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;

#tweaked= True
# test numericShift! athan example
function athanTrue()::Bool


neq=9::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,9,18)

file = matopen("./matDir/"*"fc157479366354445.mat")
hhIn=read(file,"hh")
hNewMatlab=read(file,"hNewFull")
qNewMatlab=read(file,"qNewFull")
close(file)

condn=0.0000000001::Float64

iqNewMatlab=8

nnumericMatlab=8

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&
sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;

#tweaked= True
# test numericShift! habitmod example
function habitmodTrue()::Bool


neq=12::Int64;nlag=4::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,12,60)

file = matopen("./matDir/"*"fc167479366355924.mat")
hhIn=read(file,"hh")
hNewMatlab=read(file,"hNewFull")
qNewMatlab=read(file,"qNewFull")
close(file)

condn=0.0000000001::Float64

iqNewMatlab=7

nnumericMatlab=7

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&
sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;

#tweaked= False
# test numericShift! firmvalue example
function firmvalueFalse()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,4,8)

file = matopen("./matDir/"*"fc247479366509628.mat")
hhIn=read(file,"hh")
hNewMatlab=read(file,"hNewFull")
qNewMatlab=read(file,"qNewFull")
close(file)

condn=0.0000000001::Float64

iqNewMatlab=3

nnumericMatlab=3

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&
sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;

#tweaked= False
# test numericShift! firmvalue3Leads2Lags example
function firmvalue3Leads2LagsFalse()::Bool


neq=4::Int64;nlag=2::Int64;nlead=3::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,12,20)

file = matopen("./matDir/"*"fc257479366511525.mat")
hhIn=read(file,"hh")
hNewMatlab=read(file,"hNewFull")
qNewMatlab=read(file,"qNewFull")
close(file)

condn=0.0000000001::Float64

iqNewMatlab=9

nnumericMatlab=9

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&
sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;

#tweaked= False
# test numericShift! example7 example
function example7False()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,4,8)

file = matopen("./matDir/"*"fc267479366513059.mat")
hhIn=read(file,"hh")
hNewMatlab=read(file,"hNewFull")
qNewMatlab=read(file,"qNewFull")
close(file)

condn=0.0000000001::Float64

iqNewMatlab=2

nnumericMatlab=2

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&
sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;

#tweaked= False
# test numericShift! oneEquationNoLead example
function oneEquationNoLeadFalse()::Bool


neq=1::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,1,2)

file = matopen("./matDir/"*"fc277479366514627.mat")
hhIn=read(file,"hh")
hNewMatlab=read(file,"hNewFull")
qNewMatlab=read(file,"qNewFull")
close(file)

condn=0.0000000001::Float64

iqNewMatlab=1

nnumericMatlab=1

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&
sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;

#tweaked= False
# test numericShift! reliablePaperExmpl example
function reliablePaperExmplFalse()::Bool


neq=5::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,5,10)

file = matopen("./matDir/"*"fc287479366516242.mat")
hhIn=read(file,"hh")
hNewMatlab=read(file,"hNewFull")
qNewMatlab=read(file,"qNewFull")
close(file)

condn=0.0000000001::Float64

iqNewMatlab=3

nnumericMatlab=3

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&
sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;

#tweaked= False
# test numericShift! athan example
function athanFalse()::Bool


neq=9::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,9,18)

file = matopen("./matDir/"*"fc297479366517850.mat")
hhIn=read(file,"hh")
hNewMatlab=read(file,"hNewFull")
qNewMatlab=read(file,"qNewFull")
close(file)

condn=0.0000000001::Float64

iqNewMatlab=8

nnumericMatlab=8

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&
sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;

#tweaked= False
# test numericShift! habitmod example
function habitmodFalse()::Bool


neq=12::Int64;nlag=4::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,12,60)

file = matopen("./matDir/"*"fc307479366519457.mat")
hhIn=read(file,"hh")
hNewMatlab=read(file,"hNewFull")
qNewMatlab=read(file,"qNewFull")
close(file)

condn=0.0000000001::Float64

iqNewMatlab=7

nnumericMatlab=7

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&
sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;


end
