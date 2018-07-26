"""
    callSParseAim(hh, leads, lags)

Julia wrapper function that calls the c function callSparseAim.
"""
function callSparseAim( hh, leads, lags )

    # allocate space for the matrices and initialize inputs
    neq = size(hh, 1)
    nstate = 0
    hrows = neq
    hcols = size(hh, 2)
    qmax = hrows*leads*(hrows*(lags+leads+1))
    returnCodePointer = 0
    cofb = zeros(neq, neq * lags)
    qmatrix = zeros(neq*leads, hcols)

    # use the library libSPARSEAMA to call c function ...
    # libSPARSEAMA is a shared library that combines sparseAMA
    # and LAPACK. LAPACK must be compiled with -fPIC.
    Libdl.dlopen("../deps/libopenblas64_")
    Libdl.dlopen("../deps/libarpack.so.2.0.0")
    lib = Libdl.dlopen("../deps/tmp/libSPARSEAMA")
    sym = Libdl.dlsym(lib, :callSparseAim)
    ccall(sym, Void,
          (  Ptr{Float64}, Int32, Int32, Int32, Int32,
          Int32, Int32, Int32,
          Ptr{Float64}, Ptr{Float64}, Ptr{Float64}  ),
          hh, hrows, hcols, neq, leads, lags, nstate,
          qmax, &returnCodePointer, cofb, qmatrix)
 
    return hh, cofb, qmatrix, returnCodePointer
end
