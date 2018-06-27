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
@test NumericShiftTests.firmvalueTrue()
@test NumericShiftTests.firmvalue3Leads2LagsTrue()
@test NumericShiftTests.example7True()
@test NumericShiftTests.oneEquationNoLeadTrue()
@test NumericShiftTests.reliablePaperExmplTrue()
@test NumericShiftTests.athanTrue()
@test NumericShiftTests.habitmodTrue()
@test NumericShiftTests.firmvalueFalse()
@test NumericShiftTests.firmvalue3Leads2LagsFalse()
@test NumericShiftTests.example7False()
@test NumericShiftTests.oneEquationNoLeadFalse()
@test NumericShiftTests.reliablePaperExmplFalse()
@test NumericShiftTests.athanFalse()
@test NumericShiftTests.habitmodFalse()
end



include("../src/buildA!.jl")
include("defineBuildATestFuncs.jl")
@testset "test buildA" begin
@test BuildATests.firmvalueFalse()
@test BuildATests.firmvalue3Leads2LagsFalse()
@test BuildATests.example7False()
@test BuildATests.oneEquationNoLeadFalse()
@test BuildATests.reliablePaperExmplFalse()
@test BuildATests.athanFalse()
@test BuildATests.habitmodFalse()
        
@test BuildATests.firmvalueTrue()
@test BuildATests.firmvalue3Leads2LagsTrue()
@test BuildATests.example7True()
@test BuildATests.oneEquationNoLeadTrue()
@test BuildATests.reliablePaperExmplTrue()
@test BuildATests.athanTrue()
@test BuildATests.habitmodTrue()
end



include("../src/eigenSys!.jl")
include("defineEigenSysTestFuncs.jl")
@testset "test eigenSys" begin
@test EigenSysTests.firmvalue()
@test EigenSysTests.firmvalue3Leads2Lags()
@test EigenSysTests.example7()
@test EigenSysTests.oneEquationNoLead()
@test EigenSysTests.reliablePaperExmpl()
@test EigenSysTests.athan()
@test EigenSysTests.habitmod()
end


include("../src/augmentQ!.jl")
include("defineAugmentQTestFuncs.jl")
@testset "test augmentQ" begin
@test_broken AugmentQTests.firmvalue()
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
@test ReducedFormTests.firmvalueFalse()
@test ReducedFormTests.firmvalue3Leads2LagsFalse()
@test ReducedFormTests.example7False()
@test ReducedFormTests.oneEquationNoLeadFalse()
@test ReducedFormTests.reliablePaperExmplFalse()
@test ReducedFormTests.athanFalse()
@test ReducedFormTests.habitmodFalse()
                
@test ReducedFormTests.firmvalueTrue()
@test ReducedFormTests.firmvalue3Leads2LagsTrue()
@test ReducedFormTests.example7True()
@test ReducedFormTests.oneEquationNoLeadTrue()
@test ReducedFormTests.reliablePaperExmplTrue()
@test ReducedFormTests.athanTrue()
@test ReducedFormTests.habitmodTrue()
end

    

include("../src/AMAalg.jl")
include("defineAMAalgTestFuncs.jl")
@testset "test AMAalg" begin
@test AMAalgTests.firmvalue()
@test AMAalgTests.firmvalue3Leads2Lags()
@test AMAalgTests.example7()
@test AMAalgTests.oneEquationNoLead()
@test AMAalgTests.reliablePaperExmpl()
@test AMAalgTests.athan()
@test AMAalgTests.habitmod()
end

end #outer


