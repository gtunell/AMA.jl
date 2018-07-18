# packaged tests 
include("tests/AMATests.jl")
using .AMATests, Base.Test
   
@testset "test ccall" begin
    @test AMATests.firmvalue()
    @test AMATests.firmvalue3Leads2Lags()
    @test AMATests.example7()
    @test AMATests.oneEquationNoLead()
    #@test AMATests.reliablePaperExmpl()
    #@test AMATests.athan()
    #@test AMATests.habitmod()
end
