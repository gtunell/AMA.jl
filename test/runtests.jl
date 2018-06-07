using AMA
using Base.Test
include("../src/shiftRight.jl")
include("defineShiftRightTestFuncs.jl")
importall ShiftRightTests
@testset "test shiftRight" begin
@test firmvalue()
@test_broken firmvalue3Leads2Lags()
@test_broken example7()
@test_broken oneEquationNoLead()
@test_broken reliablePaperExmpl()
@test_broken athan()
@test_broken habitmod()
end


