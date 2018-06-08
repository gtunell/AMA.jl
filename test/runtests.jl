using AMA
using Base.Test
include("../src/shiftRight.jl")
include("defineShiftRightTestFuncs.jl")
importall ShiftRightTests
@testset "test shiftRight" begin
@test firmvalue()
@test firmvalue3Leads2Lags()
@test example7()
@test oneEquationNoLead()
@test reliablePaperExmpl()
@test athan()
@test habitmod()
end


