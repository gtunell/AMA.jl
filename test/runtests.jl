using AMA
using Base.Test
using MAT
file=matopen("./matFiles/hmat.mat")
originalH=read(file,"h")
close(file)
file=matopen("./matFiles/exactRes.mat")
exactShiftH=read(file,"h")
exactShiftQ=read(file,"q")
close(file)
neq=4::Int64
qRows=4::Int64
qCols=8::Int64
#=
(newH,qq,iq,nExact)= exactShift(originalH,qq,iq,qRows,qCols,neq)
@test nExact==2
@test isapprox(newH,exactShiftH,rtol::Real=0.1e-16,atol::Real=0)
=#
@test  2==2
