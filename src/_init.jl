println("running AMA.jl/src/_init.jl")

if(isfile("/Users/garyanderson/git/AMA.jl/src/_init.jl"))
	theFile="/Users/garyanderson/git/AMA.jl/src/_init.jl"
elseif(isfile("/msu/home/m1gmt00/summer_project/AMA.jl/src/_init.jl"))
   theFile="/msu/home/m1gmt00/summer_project/AMA.jl/src/_init.jl"
end
   
if length(findin(theFile,LOAD_PATH))==0
    push!(LOAD_PATH,theFile)
    println("pushing ",theFile," onto LOAD_PATH")
end