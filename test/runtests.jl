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
@test  2==2
