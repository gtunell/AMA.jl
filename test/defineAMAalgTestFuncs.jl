module AMAalgTests

# include("../src/AMA.jl")
# test AMAalg
using ..AMA, MAT

# test AMAalg firmvalue example
function firmvalue()::Bool

# inputs    
neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64

# input matrix
hh=[0.  0.  0.  0.  -1.1  0.  0.  0.  1.  1.  0.  0.;
    0.  -0.4  0.  0.  0.  1.  -1.  0.  0.  0.  0.  0.;
    0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.;
    0.  0.  0.  -1.  0.  0.  0.  1.  0.  0.  0.  0.]::Array{Float64,2}

#=============================EXPECTED OUTPUT=======================================
bb = [0.   0.228571428571429   0.   0.;
     0.   0.400000000000000   0.   0.;
     0.   0.                  0.   0.;
     0.   0.                  0.   1.000000000000000]::Array{Float64,2}

rts=[1.1;
     1.;
     0.4]::Array{Float64,1}
==============================END EXPECTED OUTPUT==================================#

# get the expected output from matlab file
file = matopen("./matDir/AMAalg_examples/"*"firmvalue.mat")
    bb=read(file,"b")
    rts=read(file,"rts")
close(file)
    
ia=3::Int64

nex=3::Int64

nnum=0::Int64

lgrts=1::Int64

AMAcode=1::Int64

anEpsi=0.0000000001::Float64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)

######## uncomment to display the output in terminal ########
# show(IOContext(STDOUT, :compact=>false), "text/plain", bbJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", bb)
# show(IOContext(STDOUT, :compact=>false), "text/plain", rtsJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", rts)

# test the actual output against expected
isapprox(bbJulia, bb, atol=1e-16::Float64) &&
isapprox(rtsJulia, rts, atol=1e-16::Float64) &&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

# test AMAalg firmvalue3Leads2Lags example
function firmvalue3Leads2Lags()::Bool

# inputs
neq=4::Int64;nlag=2::Int64;nlead=3::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64
anEpsi=0.0000000001::Float64

# input matrix
hh=[0.  0.  0.  0.  0.  0.  0.  0.  -1.331  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.;
    0.  -0.4  0.  0.  0.  0.  0.  0.  0.  1.  -1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
    0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
    0. 0. 0. 0. 0. 0. 0. -1. 0. 0. 0. 1. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.]::Array{Float64,2}

#=============================EXPECTED OUTPUT=======================================
bb=[0.  0.037480359413222  0.  0.  0.   0.311789739868737  0.  0.;
    0.  0.400000000000000  0.  0.  0.   0.                 0.  0.;
    0.  0.                 0.  0.  0.   0.                 0.  0.;
    0.  0.                 0.  0.  0.   0.                 0.  1.000000000000000]::Array{Float64,2}

rts = [1.100000000000000 + 0.000000000000000im;
       -0.550000000000000 + 0.952627944162882im;
       -0.550000000000000 - 0.952627944162882im;
       1.000000000000000 + 0.000000000000000im;
       -0.632455532033676 + 0.000000000000000im;
       0.632455532033676 + 0.000000000000000im]::Array{Complex{Float64},1}
==============================END EXPECTED OUTPUT==================================#

# get the expected output of bb/rts from matlab file
file = matopen("./matDir/AMAalg_examples/"*"firmvalue3Leads2Lags.mat")
    bb=read(file,"b")
    rts=read(file,"rts")
close(file)

# expected outputs    
ia=6::Int64
nex=9::Int64
nnum=0::Int64
lgrts=3::Int64
AMAcode=1::Int64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)

######## uncomment to display the output in terminal ########
# show(IOContext(STDOUT, :compact=>false), "text/plain", bbJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", bb)
# show(IOContext(STDOUT, :compact=>false), "text/plain", rtsJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", rts)
     
# test the actual output against expected
isapprox(bbJulia, bb, atol=1e-16::Float64) &&
isapprox(rtsJulia, rts, atol=1e-16::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

# test AMAalg example7 example
function example7()::Bool

# inputs
neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64
anEpsi=0.0000000001::Float64

# input matrix
hh=[0.  0.  0.  0.  1.  0.  0.  1.  -1.  -1.  0.  0.;
    0.  0.  0.  0.  -0.3  1.  0.  0.  0.  -0.99  0.  0.;
    0.  0.  0.  1.  0.  0.  1.  -1.  0.  0.  0.  0.;
    0. 0. 0. -0.66 0. -1.1 0. 1. 0. 0. 0. 0.]
    
#=============================EXPECTED OUTPUT=======================================
bb = [0.  0.  0.  -0.655141349822179;
     0.  0.  0.  -0.294519698239307;
     0.  0.  0.  -0.663971668063238;
     0.  0.  0.   0.336028331936762]::Array{Float64,2}

rts = [1.318551490597276 + 0.495360132457635im;
       1.318551490597276 - 0.495360132457635im;
       0.336028331936762 + 0.000000000000000im]::Array{Complex{Float64},1}
==============================END EXPECTED OUTPUT==================================#

# get the expected output from matlab file
file = matopen("./matDir/AMAalg_examples/"*"example7.mat")
    bb=read(file,"b")
    rts=read(file,"rts")
close(file)

# expected outputs
ia=3::Int64
nex=2::Int64
nnum=0::Int64
lgrts=2::Int64
AMAcode=1::Int64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
    AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)

######## uncomment to display the output in terminal ########
# show(IOContext(STDOUT, :compact=>false), "text/plain", bbJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", bb)
# show(IOContext(STDOUT, :compact=>false), "text/plain", rtsJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", rts)
    
# test the actual output against expected
isapprox(bbJulia,bb,atol=1e-16::Float64) &&
isapprox(rtsJulia,rts,atol=1e-16::Float64) &&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

# test AMAalg oneEquationNoLead example
function oneEquationNoLead()::Bool

# inputs
neq=1::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64
anEpsi=0.0000000001::Float64

# input matrix
hh=[2. 3. 0.]
    
# genJuliaMatInit[bb, -0.666667, Array{Float64,2}]
bb = hcat([-0.666666666666667])::Array{Float64,2}

# genJuliaMatInit[rts, -0.666667, Array{Float64,1}]
rts = [-0.666666666666667]::Array{Float64,1}

# expected output   
ia=1::Int64
nex=1::Int64
nnum=0::Int64
AMAcode=1::Int64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
    AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)

######## uncomment to display the output in terminal ########
# show(IOContext(STDOUT, :compact=>false), "text/plain", bbJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", bb)
# show(IOContext(STDOUT, :compact=>false), "text/plain", rtsJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", rts)
    
isapprox(bbJulia,bb,atol=1e-16::Float64)&&
isapprox(rtsJulia,rts,atol=1e-16::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

# test AMAalg reliablePaperExmpl example
function reliablePaperExmpl()::Bool

# inputs
neq=5::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64
anEpsi=0.0000000001::Float64

# input matrix    
hh=[0.  0.  0.  -0.5  0.  0.  -1.  0.7  -0.5  1.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  1.  -0.5  0.  0.  0.  0.  -0.5;
0.  0.  0.  0.  0.  -1.  0.  1.  -0.4  0.  0.  0.  -0.9  0.  0.;
0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0. 0. 0. 0. 0. 0. 1. 0. 0. 0. 0. 0. 0. 0. 0.]

#=============================EXPECTED OUTPUT=======================================
bb =  [0.  0.  0.   0.                 0.;
      0.  0.  0.  -0.000000000000000  0.;
      0.  0.  0.   0.214101387641064  0.;
      0.  0.  0.   0.361235952187158  0.;
      0.  0.  0.   0.530747004744834  0]::Array{Float64,2}


rts = [1.063826468350866 + 1.394321682814736im;
       1.063826468350866 - 1.394321682814736im;
       0.361235952187158 + 0.000000000000000im;
       0.000000000000000 + 0.000000000000000im]::Array{Complex{Float64},1}
==============================END EXPECTED OUTPUT==================================#

# get the expected output from matlab file
file = matopen("./matDir/AMAalg_examples/"*"reliablePaperExmpl.mat")
    bb=read(file,"b")
    rts=read(file,"rts")
close(file)

# expected outputs    
ia=4::Int64
nex=3::Int64
nnum=0::Int64
lgrts=2::Int64
AMAcode=1::Int64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)

######## uncomment to display the output in terminal ########
# show(IOContext(STDOUT, :compact=>false), "text/plain", bbJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", bb)
# show(IOContext(STDOUT, :compact=>false), "text/plain", rtsJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", rts)
        
# test the actual output against expected
isapprox(bbJulia,bb,atol=1e-16::Float64)&&
isapprox(rtsJulia,rts,atol=1e-16::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

# test AMAalg athan example
function athan()::Bool

# inputs
neq=9::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64
anEpsi=0.0000000001::Float64

# input matrix
hh=[-0.5  0.  0.  0.  0.  0.  0.  0.  0.  1.  -0.18  0.  0.  -1.  0.  0.  0.  0.  -0.5  0.  0.  0.  0.  0.  0.  0.  0.;
-0.293  -0.764  0.293  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  -1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  -2.  -1.  1.  1.  0.  0.  2.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  -0.911  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  -1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0. 0. 0. 0. 0. 0. 0. 0. -1. 0. 0. 0. 0. 0. 0. 0. 0. 1. 0. 0. 0. 0. 0. 0. 0. 0. 0.]
    
#=============================EXPECTED OUTPUT=======================================
bb = [0.828597338313033  0.296448523562084  -0.113690336915825   0.212331765742260  0.  0.  0.  0.  0.;
      0.293000000000000  0.764000000000000  -0.293000000000000   0.                 0.  0.  0.  0.  0.;
      1.950194676626066  1.356897047124168  -0.520380673831651  -0.486336468515480  0.  0.  0.  0.  0.;
      0.                  0.                 0.                  0.911000000000000  0.  0.  0.  0.  0.;
      0.                  0.                 0.                  0.                 0.  0.  0.  0.  0.;
      0.                  0.                 0.                  0.                 0.  0.  0.  0.  0.;
      0.                  0.                 0.                  0.                 0.  0.  0.  0.  0.;
      0.                  0.                 0.                  0.                 0.  0.  0.  0.  0.;
      0.                  0.                 0.                  0.                 0.  0.  0.  0.  1.000000000000000]::Array{Float64,2}


rts = [1.398783335518616 + 0.000000000000000im;
       1.000000000000000 + 0.000000000000000im;
       0.911000000000000 + 0.000000000000000im;
       0.536108332240691 + 0.222056420218352im;
       0.536108332240691 - 0.222056420218352im;
       0.000000000000001 + 0.000000000000000im;
       0.000000000000000 + 0.000000000000000im]::Array{Complex{Float64},1}
==============================END EXPECTED OUTPUT==================================#

# get the expected output from matlab file
file = matopen("./matDir/AMAalg_examples/"*"athan.mat")
    bb=read(file,"b")
    rts=read(file,"rts")
close(file)

# expected outputs
ia=7::Int64
nex=8::Int64
nnum=0::Int64
lgrts=1::Int64
AMAcode=1::Int64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
    AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)

######## uncomment to display the output in terminal ########
# show(IOContext(STDOUT, :compact=>false), "text/plain", bbJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", bb)
# show(IOContext(STDOUT, :compact=>false), "text/plain", rtsJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", rts)

# test the actual output against expected
isapprox(bbJulia,bb,atol=1e-16::Float64)&&
isapprox(rtsJulia,rts,atol=1e-16::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

# test AMAalg habitmod example
function habitmod()::Bool

# inputs
neq=12::Int64;nlag=4::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64
anEpsi=0.0000000001::Float64

#input matrix
hh=[0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  -1.  -1.  0.  0.  3.45419  0.  0.  -0.74118  0.00208517  0.494116  -0.1149  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -0.88879  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.52802  0.  0.11279  0.031833  0.024734  0.  0.  0.  0.  0.  0.  0.  -0.71526  0.  0.042076  -0.22829  -0.012267  0.  0.  0.  0.  0.  0.  0.  0.22215  0.  -0.14172  0.26679  -0.11959  0.  0.  0.  0.  0.  0.  0.  -0.42308  0.  -0.61076  -0.10946  0.17172  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  -0.00011277  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.46436  0.  0.16131  0.02744  0.17087  0.  0.  0.  0.  0.  0.  0.  -1.3425  0.  0.16794  -0.35818  -0.09837  0.  0.  0.  0.  0.  0.  0.  1.06382  0.  -0.02255  0.51594  0.08949  0.  0.  0.  0.  0.  0.  0.  -0.46672  0.  -0.11369  -1.10657  -0.26021  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  -0.00141  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
-0.23292  0.  0.08512  -0.04213  0.14149  0.  0.  0.  0.  0.  0.  0.  0.03313  0.  0.15223  0.01572  -0.34762  0.  0.  0.  0.  0.  0.  0.  0.70552  0.  -0.24697  0.21888  -0.07805  0.  0.  0.  0.  0.  0.  0.  -0.56316  0.  -0.08268  -0.16054  -0.68637  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  -0.00348  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  -41.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -1.  40.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -0.99853  0.  0.  0.  0.  0.  -0.00147  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -1.00083  0.  0.  0.  0.  0.  25.9459  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -0.00146853  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  -1.  0.  0.  0.  0.  0.  -0.99578  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -1.  0.  -0.99578  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  -1.  0.  0.  0.  -0.99578  0.;
0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. -1. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 1. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.]


#================================== EXPECTED OUTPUT ======================================    
bb=[0.0275299  0.  0.0204675  0.00384168  0.0510466  0.  0.  0.  0.  0.  0.  0.  -0.150125  0.  0.0802913  -0.0569634  0.0332227  0.  0.  0.  0.  0.  0.  0.  0.00762739  0.  0.132004  -0.000975575  0.140907  0.  0.  0.  0.  0.  0.  0.  0.409592  0.531564  0.281743  -0.370309  -0.00715738  0.  0.000594579  0.  0.  0.  0.  0.0247319;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.88879  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
-0.52802  0.  -0.11279  -0.031833  -0.024734  0.  0.  0.  0.  0.  0.  0.  0.71526  0.  -0.042076  0.22829  0.012267  0.  0.  0.  0.  0.  0.  0.  -0.22215  0.  0.14172  -0.26679  0.11959  0.  0.  0.  0.  0.  0.  0.  0.42308  0.  0.61076  0.10946  -0.17172  0.  0.  0.  0.  0.  0.  0.00011277;
-0.46436  0.  -0.16131  -0.02744  -0.17087  0.  0.  0.  0.  0.  0.  0.  1.3425  0.  -0.16794  0.35818  0.09837  0.  0.  0.  0.  0.  0.  0.  -1.06382  0.  0.02255  -0.51594  -0.08949  0.  0.  0.  0.  0.  0.  0.  0.46672  0.  0.11369  1.10657  0.26021  0.  0.  0.  0.  0.  0.  0.00141;
0.23292  0.  -0.08512  0.04213  -0.14149  0.  0.  0.  0.  0.  0.  0.  -0.03313  0.  -0.15223  -0.01572  0.34762  0.  0.  0.  0.  0.  0.  0.  -0.70552  0.  0.24697  -0.21888  0.07805  0.  0.  0.  0.  0.  0.  0.  0.56316  0.  0.08268  0.16054  0.68637  0.  0.  0.  0.  0.  0.  0.00348;
-0.0486562  0.  -0.0143582  -0.00361503  -0.0163681  0.  0.  0.  0.  0.  0.  0.  0.0963933  0.  -0.0262052  0.0337474  -0.00907889  0.  0.  0.  0.  0.  0.  0.  -0.0178323  0.  -0.0276432  -0.0192967  -0.0320882  0.  0.  0.  0.  0.  0.  0.  0.0410416  0.105222  -0.0348985  0.115168  -0.012502  0.  0.0000156628  0.  0.  0.  0.  0.0265769;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.99853  0.  0.  0.  0.  0.  0.00147  0.  0.  0.  0.  0.;
0.0265517  0.  0.019758  0.00370218  0.0492574  0.  0.  0.  0.  0.  0.  0.  -0.145004  0.  0.0774512  -0.0549674  0.0320274  0.  0.  0.  0.  0.  0.  0.  0.00761162  0.  0.127323  -0.000854112  0.135885  0.  0.  0.  0.  0.  0.  0.  -25.5133  0.512756  0.27179  -0.35728  -0.00690759  0.  -0.0375677  0.  0.  0.  0.  0.02386;
0.521517  0.  0.1143  0.0309276  0.0282826  0.  0.  0.  0.  0.  0.  0.  -0.724878  0.  0.0467801  -0.229153  -0.0155764  0.  0.  0.  0.  0.  0.  0.  0.232646  0.  -0.140072  0.271375  -0.122108  0.  0.  0.  0.  0.  0.  0.  -0.421116  0.0172992  -0.603894  -0.115681  0.153917  0.  0.00000222775  0.  0.  0.  0.  0.00504552;
0.0235796  0.  -0.0818094  0.0108053  -0.152502  0.  0.  0.  0.  0.  0.  0.  0.436271  0.  -0.246456  0.127264  0.0284865  0.  0.  0.  0.  0.  0.  0.  -0.248762  0.  -0.221058  -0.110815  -0.0970434  0.  0.  0.  0.  0.  0.  0.  25.5232  -0.947988  -0.416326  0.61486  0.420138  0.  0.0375093  0.  0.  0.  0.  -0.152162;
-0.00201156  0.  0.00248092  -0.000581449  0.00412511  0.  0.  0.  0.  0.  0.  0.  -0.0116365  0.  0.00675309  -0.00288513  -0.00242817  0.  0.  0.  0.  0.  0.  0.  0.00965336  0.  0.00373112  0.00447091  -0.00157814  0.  0.  0.  0.  0.  0.  0.  -0.998996  0.0173377  0.00574045  -0.0102517  -0.0165428  0.  -0.00146776  0.  0.  0.  0.  0.00513261;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.]::Array{Float64,2}
   
rts=[679.579 + 0.0im;
1.11741 + 0.0im;
1.00424 + 0.0im;
1.00424 + 0.0im;
1.00403 + 0.0im;
1. + 0.0im;
0.918128 + 0.0887657im;
0.918128 - 0.0887657im;
0.88879 + 0.0im;
0.714747 + 0.0im;
0.587349 + 0.26613im;
0.587349 - 0.26613im;
-0.129115 + 0.619993im;
-0.129115 - 0.619993im;
-0.294489 + 0.507462im;
-0.294489 - 0.507462im;
-0.230764 + 0.281568im;
-0.230764 - 0.281568im;
0.198899 + 0.16454im;
0.198899 - 0.16454im;
-0.000096719 + 0.0000998847im;
-0.000096719 - 0.0000998847im;
0.000096719 + 0.0000934444im;
0.000096719 - 0.0000934444im]::Array{Complex{Float64},1}

    rts =

   1.0e+02 *

  [679.5791882704392 + 0.000000000000000i
  0.011174056911205 + 0.000000000000000i
  0.010042378838699 + 0.000000000000000i
  0.010042378838699 + 0.000000000000000i
  0.010040319456276 + 0.000000000000000i
  0.010000000000000 + 0.000000000000000i
  0.009181276707310 + 0.000887657009847i
  0.009181276707310 - 0.000887657009847i
  0.008887900000000 + 0.000000000000000i
  0.007147473743092 + 0.000000000000000i
  0.005873486456557 + 0.002661299407994i
  0.005873486456557 - 0.002661299407994i
 -0.001291146099753 + 0.006199930896584i
 -0.001291146099753 - 0.006199930896584i
 -0.002944893382710 + 0.005074619572479i
 -0.002944893382710 - 0.005074619572479i
 -0.002307641131494 + 0.002815677946110i
 -0.002307641131494 - 0.002815677946110i
  0.001988989487238 + 0.001645404557007i
  0.001988989487238 - 0.001645404557007i
 -0.000000850833188 + 0.000000000000000i
  0.000000014229547 + 0.000000836846336i
  0.000000014229547 - 0.000000836846336i
  0.000000822374090 + 0.000000000000000i]::Array{Complex{Float64},1}
==============================END EXPECTED OUTPUT==================================#

# get the expected output from matlab file
file = matopen("./matDir/AMAalg_examples/"*"habitmod.mat")
    bb=read(file,"b")
    rts=read(file,"rts")
close(file)

#expected output
ia=24::Int64
nex=7::Int64
nnum=0::Int64
lgrts=5::Int64
AMAcode=1::Int64

(bbJulia,rtsJulia,iaJulia,nexJulia,nnumJulia,lgrtsJulia,AMAcodeJulia) = 
AMAalg(hh,neq,nlag,nlead,anEpsi,1+anEpsi)

######## uncomment to display the output in terminal ########
# show(IOContext(STDOUT, :compact=>false), "text/plain", bbJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", bb)
# show(IOContext(STDOUT, :compact=>false), "text/plain", rtsJulia)
# show(IOContext(STDOUT, :compact=>false), "text/plain", rts)
    
    # test the actual output against expected
isapprox(bbJulia,bb,atol=1e-16::Float64)&&
isapprox(rtsJulia,rts,atol=1e-16::Float64)&&
iaJulia==ia&&
nexJulia==nex&&
nnumJulia==nnum&&
iaJulia==ia
end;

end
