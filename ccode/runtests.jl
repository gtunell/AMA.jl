# packaged tests 
include("test/AMATests.jl")
using .AMATests, Base.Test
   
@testset "test ccall" begin
    @test AMATests.firmvalueFalse()
    @test AMATests.firmvalue3Leads2LagsFalse()
    @test AMATests.example7False()
    @test AMATests.oneEquationNoLeadFalse()
    @test AMATests.reliablePaperExmplFalse()
    @test AMATests.athanFalse()
    @test AMATests.habitmodFalse()

    @test AMATests.firmvalueTrue()
    @test AMATests.firmvalue3Leads2LagsTrue()
    #@test AMATests.example7True()
    #@test AMATests.oneEquationNoLeadTrue()
    #@test AMATests.reliablePaperExmplTrue()
    #@test AMATests.athanTrue()
    #@test AMATests.habitmodTrue()
    
end
