script = joinpath(dirname(@__FILE__), "..", "deps", "julia-make.sh") 
run(`$script`)

using Base.Test

const AMA_path = joinpath(dirname(@__FILE__), "..", "src", "AMA.jl")
include(AMA_path)

test_path = joinpath(dirname(@__FILE__), "defineShiftRightTestFuncs.jl")
include(test_path)
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

test_path = joinpath(dirname(@__FILE__), "defineExactShiftTestFuncs.jl")
include(test_path)  
@testset "test exactShift" begin
@test ExactShiftTests.firmvalue()
@test ExactShiftTests.firmvalue3Leads2Lags()
@test ExactShiftTests.example7()
@test ExactShiftTests.oneEquationNoLead()
@test ExactShiftTests.reliablePaperExmpl()
@test ExactShiftTests.athan()
@test ExactShiftTests.habitmod()
end

test_path = joinpath(dirname(@__FILE__), "defineNumericShiftTestFuncs.jl")
include(test_path)
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

test_path = joinpath(dirname(@__FILE__), "defineBuildATestFuncs.jl")
include(test_path)
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

test_path = joinpath(dirname(@__FILE__), "defineEigenSysTestFuncs.jl")
include(test_path)
@testset "test eigenSys" begin
@test EigenSysTests.firmvalue()
@test EigenSysTests.firmvalue3Leads2Lags()
@test EigenSysTests.example7()
@test EigenSysTests.oneEquationNoLead()
@test EigenSysTests.reliablePaperExmpl()
@test EigenSysTests.athan()
@test EigenSysTests.habitmod()
end

test_path = joinpath(dirname(@__FILE__), "defineAugmentQTestFuncs.jl")
include(test_path)
@testset "test augmentQ" begin
@test AugmentQTests.firmvalue()
@test AugmentQTests.firmvalue3Leads2Lags()
@test AugmentQTests.example7()
@test AugmentQTests.oneEquationNoLead()
@test AugmentQTests.reliablePaperExmpl()
@test AugmentQTests.athan()
@test AugmentQTests.habitmod()
end

test_path = joinpath(dirname(@__FILE__), "defineReducedFormTestFuncs.jl")
include(test_path)
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
    
test_path = joinpath(dirname(@__FILE__), "defineAMAalgTestFuncs.jl")
include(test_path)
@testset "test AMAalg" begin

    tic(); # clock speed
    
    @test AMAalgTests.firmvalueFalse()
    @test AMAalgTests.firmvalue3Leads2LagsFalse()
    @test AMAalgTests.example7False()
    @test AMAalgTests.oneEquationNoLeadFalse()
    @test AMAalgTests.reliablePaperExmplFalse()
    @test AMAalgTests.athanFalse()
    @test AMAalgTests.habitmodFalse()

    @test AMAalgTests.firmvalueTrue()
    @test AMAalgTests.firmvalue3Leads2LagsTrue()
    @test AMAalgTests.example7True()
    @test AMAalgTests.oneEquationNoLeadTrue()
    @test AMAalgTests.reliablePaperExmplTrue()
    @test AMAalgTests.athanTrue()
    @test AMAalgTests.habitmodTrue()
    print("Julia implementation ran for ");

    toc(); # end clock 
end

test_path = joinpath(dirname(@__FILE__), "defineCcallTestFuncs.jl")
include(test_path)
@testset "test ccall" begin
    tic();
    @test CcallTests.firmvalueFalse()
    @test CcallTests.firmvalue3Leads2LagsFalse()
    @test CcallTests.example7False()
    @test CcallTests.oneEquationNoLeadFalse()
    @test CcallTests.reliablePaperExmplFalse()
    @test CcallTests.athanFalse()
    @test CcallTests.habitmodFalse()

    @test CcallTests.firmvalueTrue()
    @test CcallTests.firmvalue3Leads2LagsTrue()
    @test CcallTests.example7True()
    @test CcallTests.oneEquationNoLeadTrue()
    @test CcallTests.reliablePaperExmplTrue()
    @test CcallTests.athanTrue()
    @test CcallTests.habitmodTrue()
    print("C/Fortran implementation ran for ");toc();
end
    
test_path = joinpath(dirname(@__FILE__), "defineAMAerrTestFuncs.jl")
include(test_path)  
@testset "test AMAerr" begin
    @test AMAerrTests.noErrors()
    @test AMAerrTests.tooManyRoots()
    @test AMAerrTests.tooFewRoots()
    #@test AMAerrTests.tooManyExactShifts()
    #@test AMAerrTests.tooManyNumericShifts()
    @test AMAerrTests.spurious()
    
end
    

end #outer


