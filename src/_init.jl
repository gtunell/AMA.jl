println("running AMA.jl/src/_init.jl")

if(dirname(pwd()) == "/msu/home/m1gmt00/summer_project/AMA.jl")
   theFile="/msu/home/m1gmt00/summer_project/AMA.jl/src/"
elseif(dirname(pwd()) == "/Users/garyanderson/git/AMA.jl/src/_init.jl")
   theFile="/Users/garyanderson/git/AMA.jl/src"
elseif(homedir() == "/msu/home/m1gsa00")
   theFile="/msu/scratch2/m1gsa00/git/AMA.jl/src"
end

   

if length(findin(theFile,LOAD_PATH))==0
    push!(LOAD_PATH,theFile)
    println("pushing ",theFile," onto LOAD_PATH")
end
