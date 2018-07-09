module NumericShiftTests

include("../src/AMA.jl")
using .AMA, MAT


#tweaked= False
# test numericShift! firmvalue example
function firmvalueFalse()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,4,8)

file = matopen("./matDir/"*"numericShiftTestMatsfirmvalueFalse.mat")
hhIn=read(file,"hh")
hhIn=if(typeof(hhIn)==(Array{Float64,2})) hhIn else hcat(hhIn) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsfirmvalueFalse.mat")
hNewMatlab=read(file,"hNewFull")
hNewMatlab=if(typeof(hNewMatlab)==(Array{Float64,2})) hNewMatlab else hcat(hNewMatlab) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsfirmvalueFalse.mat")
qNewMatlab=read(file,"qNewFull")
qNewMatlab=if(typeof(qNewMatlab)==(Array{Float64,2})) qNewMatlab else hcat(qNewMatlab) end
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

file = matopen("./matDir/"*"numericShiftTestMatsfirmvalue3Leads2LagsFalse.mat")
hhIn=read(file,"hh")
hhIn=if(typeof(hhIn)==(Array{Float64,2})) hhIn else hcat(hhIn) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsfirmvalue3Leads2LagsFalse.mat")
hNewMatlab=read(file,"hNewFull")
hNewMatlab=if(typeof(hNewMatlab)==(Array{Float64,2})) hNewMatlab else hcat(hNewMatlab) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsfirmvalue3Leads2LagsFalse.mat")
qNewMatlab=read(file,"qNewFull")
qNewMatlab=if(typeof(qNewMatlab)==(Array{Float64,2})) qNewMatlab else hcat(qNewMatlab) end
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

file = matopen("./matDir/"*"numericShiftTestMatsexample7False.mat")
hhIn=read(file,"hh")
hhIn=if(typeof(hhIn)==(Array{Float64,2})) hhIn else hcat(hhIn) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsexample7False.mat")
hNewMatlab=read(file,"hNewFull")
hNewMatlab=if(typeof(hNewMatlab)==(Array{Float64,2})) hNewMatlab else hcat(hNewMatlab) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsexample7False.mat")
qNewMatlab=read(file,"qNewFull")
qNewMatlab=if(typeof(qNewMatlab)==(Array{Float64,2})) qNewMatlab else hcat(qNewMatlab) end
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

file = matopen("./matDir/"*"numericShiftTestMatsoneEquationNoLeadFalse.mat")
hhIn=read(file,"hh")
hhIn=if(typeof(hhIn)==(Array{Float64,2})) hhIn else hcat(hhIn) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsoneEquationNoLeadFalse.mat")
hNewMatlab=read(file,"hNewFull")
hNewMatlab=if(typeof(hNewMatlab)==(Array{Float64,2})) hNewMatlab else hcat(hNewMatlab) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsoneEquationNoLeadFalse.mat")
qNewMatlab=read(file,"qNewFull")
qNewMatlab=if(typeof(qNewMatlab)==(Array{Float64,2})) qNewMatlab else hcat(qNewMatlab) end
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

file = matopen("./matDir/"*"numericShiftTestMatsreliablePaperExmplFalse.mat")
hhIn=read(file,"hh")
hhIn=if(typeof(hhIn)==(Array{Float64,2})) hhIn else hcat(hhIn) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsreliablePaperExmplFalse.mat")
hNewMatlab=read(file,"hNewFull")
hNewMatlab=if(typeof(hNewMatlab)==(Array{Float64,2})) hNewMatlab else hcat(hNewMatlab) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsreliablePaperExmplFalse.mat")
qNewMatlab=read(file,"qNewFull")
qNewMatlab=if(typeof(qNewMatlab)==(Array{Float64,2})) qNewMatlab else hcat(qNewMatlab) end
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

file = matopen("./matDir/"*"numericShiftTestMatsathanFalse.mat")
hhIn=read(file,"hh")
hhIn=if(typeof(hhIn)==(Array{Float64,2})) hhIn else hcat(hhIn) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsathanFalse.mat")
hNewMatlab=read(file,"hNewFull")
hNewMatlab=if(typeof(hNewMatlab)==(Array{Float64,2})) hNewMatlab else hcat(hNewMatlab) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsathanFalse.mat")
qNewMatlab=read(file,"qNewFull")
qNewMatlab=if(typeof(qNewMatlab)==(Array{Float64,2})) qNewMatlab else hcat(qNewMatlab) end
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

file = matopen("./matDir/"*"numericShiftTestMatshabitmodFalse.mat")
hhIn=read(file,"hh")
hhIn=if(typeof(hhIn)==(Array{Float64,2})) hhIn else hcat(hhIn) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatshabitmodFalse.mat")
hNewMatlab=read(file,"hNewFull")
hNewMatlab=if(typeof(hNewMatlab)==(Array{Float64,2})) hNewMatlab else hcat(hNewMatlab) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatshabitmodFalse.mat")
qNewMatlab=read(file,"qNewFull")
qNewMatlab=if(typeof(qNewMatlab)==(Array{Float64,2})) qNewMatlab else hcat(qNewMatlab) end
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

#tweaked= True
# test numericShift! firmvalue example
function firmvalueTrue()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,4,8)

file = matopen("./matDir/"*"numericShiftTestMatsfirmvalueTrue.mat")
hhIn=read(file,"hh")
hhIn=if(typeof(hhIn)==(Array{Float64,2})) hhIn else hcat(hhIn) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsfirmvalueTrue.mat")
hNewMatlab=read(file,"hNewFull")
hNewMatlab=if(typeof(hNewMatlab)==(Array{Float64,2})) hNewMatlab else hcat(hNewMatlab) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsfirmvalueTrue.mat")
qNewMatlab=read(file,"qNewFull")
qNewMatlab=if(typeof(qNewMatlab)==(Array{Float64,2})) qNewMatlab else hcat(qNewMatlab) end
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

file = matopen("./matDir/"*"numericShiftTestMatsfirmvalue3Leads2LagsTrue.mat")
hhIn=read(file,"hh")
hhIn=if(typeof(hhIn)==(Array{Float64,2})) hhIn else hcat(hhIn) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsfirmvalue3Leads2LagsTrue.mat")
hNewMatlab=read(file,"hNewFull")
hNewMatlab=if(typeof(hNewMatlab)==(Array{Float64,2})) hNewMatlab else hcat(hNewMatlab) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsfirmvalue3Leads2LagsTrue.mat")
qNewMatlab=read(file,"qNewFull")
qNewMatlab=if(typeof(qNewMatlab)==(Array{Float64,2})) qNewMatlab else hcat(qNewMatlab) end
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

file = matopen("./matDir/"*"numericShiftTestMatsexample7True.mat")
hhIn=read(file,"hh")
hhIn=if(typeof(hhIn)==(Array{Float64,2})) hhIn else hcat(hhIn) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsexample7True.mat")
hNewMatlab=read(file,"hNewFull")
hNewMatlab=if(typeof(hNewMatlab)==(Array{Float64,2})) hNewMatlab else hcat(hNewMatlab) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsexample7True.mat")
qNewMatlab=read(file,"qNewFull")
qNewMatlab=if(typeof(qNewMatlab)==(Array{Float64,2})) qNewMatlab else hcat(qNewMatlab) end
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

file = matopen("./matDir/"*"numericShiftTestMatsoneEquationNoLeadTrue.mat")
hhIn=read(file,"hh")
hhIn=if(typeof(hhIn)==(Array{Float64,2})) hhIn else hcat(hhIn) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsoneEquationNoLeadTrue.mat")
hNewMatlab=read(file,"hNewFull")
hNewMatlab=if(typeof(hNewMatlab)==(Array{Float64,2})) hNewMatlab else hcat(hNewMatlab) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsoneEquationNoLeadTrue.mat")
qNewMatlab=read(file,"qNewFull")
qNewMatlab=if(typeof(qNewMatlab)==(Array{Float64,2})) qNewMatlab else hcat(qNewMatlab) end
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

file = matopen("./matDir/"*"numericShiftTestMatsreliablePaperExmplTrue.mat")
hhIn=read(file,"hh")
hhIn=if(typeof(hhIn)==(Array{Float64,2})) hhIn else hcat(hhIn) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsreliablePaperExmplTrue.mat")
hNewMatlab=read(file,"hNewFull")
hNewMatlab=if(typeof(hNewMatlab)==(Array{Float64,2})) hNewMatlab else hcat(hNewMatlab) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsreliablePaperExmplTrue.mat")
qNewMatlab=read(file,"qNewFull")
qNewMatlab=if(typeof(qNewMatlab)==(Array{Float64,2})) qNewMatlab else hcat(qNewMatlab) end
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

file = matopen("./matDir/"*"numericShiftTestMatsathanTrue.mat")
hhIn=read(file,"hh")
hhIn=if(typeof(hhIn)==(Array{Float64,2})) hhIn else hcat(hhIn) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsathanTrue.mat")
hNewMatlab=read(file,"hNewFull")
hNewMatlab=if(typeof(hNewMatlab)==(Array{Float64,2})) hNewMatlab else hcat(hNewMatlab) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatsathanTrue.mat")
qNewMatlab=read(file,"qNewFull")
qNewMatlab=if(typeof(qNewMatlab)==(Array{Float64,2})) qNewMatlab else hcat(qNewMatlab) end
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

file = matopen("./matDir/"*"numericShiftTestMatshabitmodTrue.mat")
hhIn=read(file,"hh")
hhIn=if(typeof(hhIn)==(Array{Float64,2})) hhIn else hcat(hhIn) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatshabitmodTrue.mat")
hNewMatlab=read(file,"hNewFull")
hNewMatlab=if(typeof(hNewMatlab)==(Array{Float64,2})) hNewMatlab else hcat(hNewMatlab) end
close(file)

file = matopen("./matDir/"*"numericShiftTestMatshabitmodTrue.mat")
qNewMatlab=read(file,"qNewFull")
qNewMatlab=if(typeof(qNewMatlab)==(Array{Float64,2})) qNewMatlab else hcat(qNewMatlab) end
close(file)

condn=0.0000000001::Float64

iqNewMatlab=7

nnumericMatlab=7

(hNewJulia,qNewJulia,iqNew,nnumeric)=numericShift!(hhIn,qq,0,qRows,qCols,neq,condn)
sameSpan(hNewJulia,hNewMatlab)&&


######## uncomment to display the output in terminal ########
# show(IOContext(STDOUT, :compact=>false), "text/plain", qNewJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", qNewMatlab)
#display(hNewJulia)
#display(hNewMatlab)

    
    
#sameSpan(qNewJulia,qNewMatlab)&&
iqNew==iqNewMatlab&&
nnumeric==nnumericMatlab
end;


end
