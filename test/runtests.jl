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
@test ExactShiftTests.firmvalue3Leads2Lags()
@test ExactShiftTests.example7()
@test ExactShiftTests.oneEquationNoLead()
@test ExactShiftTests.reliablePaperExmpl()
@test ExactShiftTests.athan()
@test ExactShiftTests.habitmod()
end


include("../src/numericShift!.jl")
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



include("../src/buildA!.jl")
include("defineBuildATestFuncs.jl")
@testset "test buildA" begin
@test_broken BuildATests.firmvalue()
@test_broken BuildATests.firmvalue3Leads2Lags()
@test_broken BuildATests.example7()
@test_broken BuildATests.oneEquationNoLead()
@test_broken BuildATests.reliablePaperExmpl()
@test_broken BuildATests.athan()
@test_broken BuildATests.habitmod()
end



include("../src/eigenSys!.jl")
include("defineEigenSysTestFuncs.jl")
@testset "test eigenSys" begin
@test EigenSysTests.firmvalue()
@test_broken EigenSysTests.firmvalue3Leads2Lags()
@test_broken EigenSysTests.example7()
@test_broken EigenSysTests.oneEquationNoLead()
@test_broken EigenSysTests.reliablePaperExmpl()
@test_broken EigenSysTests.athan()
@test_broken EigenSysTests.habitmod()
end


include("../src/augmentQ!.jl")
include("defineAugmentQTestFuncs.jl")
@testset "test augmentQ" begin
@test AugmentQTests.firmvalue()
@test_broken AugmentQTests.firmvalue3Leads2Lags()
@test_broken AugmentQTests.example7()
@test_broken AugmentQTests.oneEquationNoLead()
@test_broken AugmentQTests.reliablePaperExmpl()
@test_broken AugmentQTests.athan()
@test_broken AugmentQTests.habitmod()
end

    

include("../src/reducedForm.jl")
include("defineReducedFormTestFuncs.jl")
@testset "test reducedForm" begin
@test ReducedFormTests.firmvalue()
@test_broken ReducedFormTests.firmvalue3Leads2Lags()
@test_broken ReducedFormTests.example7()
@test_broken ReducedFormTests.oneEquationNoLead()
@test_broken ReducedFormTests.reliablePaperExmpl()
@test_broken ReducedFormTests.athan()
@test_broken ReducedFormTests.habitmod()
end

end #outer


