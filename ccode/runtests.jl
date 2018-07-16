Libdl.push!(Libdl.DL_LOAD_PATH,
                "/msu/home/m1gmt00/summer_project/AMA.jl/ccode/src")
                
include("testCallSparseAim.jl")     
 
using Base.Test
@testset "test ccall" begin
    @test CSparseAMATests.firmvalue()
    # @test CSparseAMATests.firmvalue3Leads2Lags()
end
