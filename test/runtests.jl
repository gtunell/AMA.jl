using AMA
using Base.Test

#test shiftRight:firmvalue example
toShift=[0.  -0.4  0.  0.  0.  1.  -1.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.;
0.  0.  0.  -1.  0.  0.  0.  1.  0.  0.  0.  0.]
shifted=[0.  0.  0.  0.  0.  -0.4  0.  0.  0.  1.  -1.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.;
0.  0.  0.  0.  0.  0.  0.  -1.  0.  0.  0.  1.]
neq=4::Int64
#=
shiftResult::Array{Float64,2}=shiftRight(toShift,neq)
@test isapprox(shiftResult,shifted,rtol::Real=0.1e-16,atol::Real=0)
=#


#test exactShift:firmvalue example
originalH=[0.  0.  0.  0.  -1.1  0.  0.  0.  1.  1.  0.  0.;
           0.  -0.4  0.  0.  0.  1.  -1.  0.  0.  0.  0.  0.;
           0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.;
           0.  0.  0.  -1.  0.  0.  0.  1.  0.  0.  0.  0.]
exactShiftH=[
0.  0.  0.  0.  -1.1  0.  0.  0.  1.  1.  0.  0.; 
0.  0.  0.  0.  0.  -0.4  0.  0.  0.  1.  -1.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.;
0.  0.  0.  0.  0.  0.  0.  -1.  0.  0.  0.  1.]
zf=[
0.  -0.4  0.  0.  0.  1.  -1.  0.;
0.  0.  0.  0.  0.  0.  1.  0.;
0.  0.  0.  -1.  0.  0.  0.  1.;
0.  0.  0.  0.  0.  0.  0.  0.]
neq=4::Int64
qRows=4::Int64
qCols=8::Int64
#=
(newH,qq,iq,nExact)= exactShift(originalH,qq,iq,qRows,qCols,neq)
@test nExact==2
@test isapprox(newH,exactShiftH,rtol::Real=0.1e-16,atol::Real=0)
@test isapprox(qq,zf,rtol::Real=0.1e-16,atol::Real=0)
=#

#test buildA:firmvalue example

hIn= [0.  0.  0.  0.  -1.1  0.  0.  0.  1.  1.  0.  0.;
         0.  0.  0.  0.  0.  -0.4  0.  0.  0.  1.  -1.  0.;
         0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.;
         0.  0.  0.  0.  0.  0.  0.  -1.  0.  0.  0.  1.]

aa=[1.1  -0.4  0.;
         0.  0.4  0.;
         0.  0.  1.]
js=[5  6  8]
qCols=8::Int64
neq=4::Int64
#=
(aa,ia,js) = buildA(hIn,qcols,neq)
=#    


ww=[0.868243  0.  0.;
         -0.496139  0.  1.;
         0.  1.  0.]
rts=[1.1;
         1.;
         0.4]

#=
(w,rts,lgroots) = eigenSystem(a,uprbnd,min(length(js),qrows-iq+1))
=#    


#Transpose[ww] . aa -  DiagonalMatrix[Flatten[rts]] . Transpose[ww]

#test augmentQ:firmvalue example
qqFinal=[0.  -0.4  0.  0.  0.  1.  -1.  0.;
         0.  0.  0.  0.  0.  0.  1.  0.;
         0.  0.  0.  -1.  0.  0.  0.  1.;
         0.  0.  0.  0.  0.  0.  0.  0.]


#=
qq = augmentQ(qq,ww,js,iq,qrows);
=#    


#test reducedForm:firmvalue example

bb=[0.  0.228571  0.  0.;
         0.  0.4  0.  0.;
         0.  0.  0.  0.;
         0.  0.  0.  1.]

#=
(nonsing,bb) = reducedForm(qq,qrows,qcols,bcols,neq,condn);
=#    

#test observStruct:firmvalue example

ss=[0.  0.  0.  0.  -1.1  0.628571  0.  0.;
         0.  -0.4  0.  0.  0.  1.  -1.  0.;
         0.  0.  0.  0.  0.  0.  1.  0.;
         0.  0.  0.  -1.  0.  0.  0.  1.]

#=
scof = observStruct(hh,bb,neq,nlag,nlead)
=#    


#test makePhi:firmvalue example

#test makeF:firmvalue example

#test makeVartheta:firmvalue example

#test AMAErr:firmvalue example

@test  2==2
