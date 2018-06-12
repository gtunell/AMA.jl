#using AMA
import AMA
using Base.Test

include("defineShiftRightTestFuncs.jl")

@testset "outer"  begin# an outer so that it does't quit on first fail
@testset "test shiftRight" begin
@test ShiftRightTests.firmvalue()
@test ShiftRightTests.firmvalue3Leads2Lags()
@test ShiftRightTests.example7()
@test ShiftRightTests.oneEquationNoLead()
@test ShiftRightTests.reliablePaperExmpl()
@test ShiftRightTests.athan()
@test ShiftRightTests.habitmod()
end


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


include("../src/numericShift!.jl")
include("defineNumericShiftTestFuncs.jl")
@testset "test numericShift" begin
@test NumericShiftTests.firmvalue()
@test_broken NumericShiftTests.firmvalue3Leads2Lags()
@test_broken NumericShiftTests.example7()
@test_broken NumericShiftTests.oneEquationNoLead()
@test_broken NumericShiftTests.reliablePaperExmpl()
@test_broken NumericShiftTests.athan()
@test_broken NumericShiftTests.habitmod()
end



include("../src/buildA!.jl")
include("defineBuildATestFuncs.jl")
@testset "test buildA" begin
@test BuildATests.firmvalue()
@test_broken BuildATests.firmvalue3Leads2Lags()
@test_broken BuildATests.example7()
@test_broken BuildATests.oneEquationNoLead()
@test_broken BuildATests.reliablePaperExmpl()
@test_broken BuildATests.athan()
@test_broken BuildATests.habitmod()
end
#==#
end #outer


