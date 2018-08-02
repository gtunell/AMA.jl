#cd(dirname(@__FILE__))
#run(`make`)

#if is_apple()
#    run(`brew tap homebrew/science`)
#    run(`brew instal hdf5`)
#    Pkg.add("HDF5")
#end

Pkg.add("MAT")
