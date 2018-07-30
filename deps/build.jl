if is_linux()
    Pkg.add("MAT");
elseif is_apple()
    run('brew tap homebrew/science')
    run('brew install hdf5')
    Pkg.add("HDF5")
    Pkg.add("MAT")
end
