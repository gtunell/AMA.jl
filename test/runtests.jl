using AMA
using Base.Test
include("../src/shiftRight.jl")
include("defineShiftRightTestFuncs.jl")

@testset "test shiftRight" begin
@test ShiftRightTests.firmvalue()
@test ShiftRightTests.firmvalue3Leads2Lags()
@test ShiftRightTests.example7()
@test ShiftRightTests.oneEquationNoLead()
@test ShiftRightTests.reliablePaperExmpl()
@test ShiftRightTests.athan()
@test ShiftRightTests.habitmod()
end

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


include("../src/numericShift.jl")
include("defineNumericShiftTestFuncs.jl")
@testset "test numericShift" begin
@test_broken NumericShiftTests.firmvalue()
@test_broken NumericShiftTests.firmvalue3Leads2Lags()
@test_broken NumericShiftTests.example7()
@test_broken NumericShiftTests.oneEquationNoLead()
@test_broken NumericShiftTests.reliablePaperExmpl()
@test_broken NumericShiftTests.athan()
@test_broken NumericShiftTests.habitmod()
end

