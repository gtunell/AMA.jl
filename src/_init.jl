println("running AMA.jl/src/_init.jl")
theFile="/Users/garyanderson/git/AMA.jl/src/_init.jl"
if length(findin(theFile,LOAD_PATH))==0
    push!(LOAD_PATH,pwd())
    println("pushing ",theFile," onto LOAD_PATH")
end

  
