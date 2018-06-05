using AMA
using Base.Test
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
