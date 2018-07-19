# make C library visible for call to C code. In src/ use: make -f makefileJulia
Libdl.push!(Libdl.DL_LOAD_PATH,
                "/msu/home/m1gmt00/summer_project/AMA.jl/ccode/src")

include("callSparseAim.jl")
include("test/AMATests.jl")

using Base.Test, .AMATests 

@testset "test ccall" begin
    @test AMATests.firmvalueFalse()
    @test AMATests.firmvalue3Leads2LagsFalse()
    @test AMATests.example7False()
    @test AMATests.oneEquationNoLeadFalse()
    @test AMATests.reliablePaperExmplFalse()
    @test AMATests.athanFalse()
    @test AMATests.habitmodFalse()

    @test AMATests.firmvalueTrue()
    #@test AMATests.firmvalue3Leads2LagsTrue()
    #@test AMATests.example7True()
    #@test AMATests.oneEquationNoLeadTrue()
    #@test AMATests.reliablePaperExmplTrue()
    #@test AMATests.athanTrue()
    #@test AMATests.habitmodTrue()
    
end
