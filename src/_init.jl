println("running AMA.jl/src/_init.jl")

if(isfile("/Users/garyanderson/git/AMA.jl/src/_init.jl"))
	theFile="/Users/garyanderson/git/AMA.jl/src"
elseif(isfile("/msu/scratch2/m1gsa00/git/AMA.jl/src/_init.jl"))
   theFile="/msu/scratch2/m1gsa00/git/AMA.jl/src"
end
   
if length(findin(theFile,LOAD_PATH))==0
    push!(LOAD_PATH,theFile)
    println("pushing ",theFile," onto LOAD_PATH")
end
