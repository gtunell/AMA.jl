using AMA
using Base.Test
include("../src/shiftRight.jl")
#=
include("defineShiftRightTestFuncs.jl")

@testset "test shiftRight" begin
@test ShiftRightTests.firmvalue()
@test_broken ShiftRightTests.firmvalue3Leads2Lags()
@test_broken ShiftRightTests.example7()
@test_broken ShiftRightTests.oneEquationNoLead()
@test_broken ShiftRightTests.reliablePaperExmpl()
@test_broken ShiftRightTests.athan()
@test_broken ShiftRightTests.habitmod()
end
=#
include("../src/exactShift.jl")
include("defineExactShiftTestFuncs.jl")
@testset "test exactShift" begin
@test ExactShiftTests.firmvalue()
@test_broken ExactShiftTests.firmvalue3Leads2Lags()
@test_broken ExactShiftTests.example7()
@test_broken ExactShiftTests.oneEquationNoLead()
@test_broken ExactShiftTests.reliablePaperExmpl()
@test_broken ExactShiftTests.athan()
@test_broken ExactShiftTests.habitmod()
end


