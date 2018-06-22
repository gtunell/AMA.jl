module BuildATests
import AMAFUNCS.buildA!

#tweaked= False
# test buildA! firmvalue example
function firmvalueFalse()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,4,8)

hForA=[0.  0.  0.  0.  -1.1  0.  0.  0.  1.  1.  0.  0.;
0.  0.  0.  0.  0.  -0.4  0.  0.  0.  1.  -1.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.;
0.  0.  0.  0.  0.  0.  0.  -1.  0.  0.  0.  1.]::Array{Float64,2}

aa=[1.1  -0.4  0.;
0.  0.4  0.;
0.  0.  1.]::Array{Float64,2}

ia=3::Int64

js=[5  6  8]::Array{Int64,2}

(aaJulia,iaJulia,jsJulia)=buildA!(hForA,qCols,neq)
isapprox(aaJulia,aa) &&
isapprox(iaJulia,ia)&&
isapprox(jsJulia,js)
end;

#tweaked= False
# test buildA! firmvalue3Leads2Lags example
function firmvalue3Leads2LagsFalse()::Bool


neq=4::Int64;nlag=2::Int64;nlead=3::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,12,20)

hForA=[0.  0.  0.  0.  0.  0.  0.  0.  -1.331  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -0.4  0.  0.  0.  0.  0.  0.  0.  1.  -1.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -1.  0.  0.  0.  1.]::Array{Float64,2}

aa=[0.  1.  0.  0.  0.  0.;
0.  0.  0.  1.  0.  0.;
0.  0.  0.  0.  1.  0.;
1.331  0.  -1.  0.  0.  0.;
0.  0.  0.4  0.  0.  0.;
0.  0.  0.  0.  0.  1.]::Array{Float64,2}

ia=6::Int64

js=[9  13  14  17  18  20]::Array{Int64,2}

(aaJulia,iaJulia,jsJulia)=buildA!(hForA,qCols,neq)
isapprox(aaJulia,aa) &&
isapprox(iaJulia,ia)&&
isapprox(jsJulia,js)
end;

#tweaked= False
# test buildA! example7 example
function example7False()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,4,8)

hForA=[0.  0.  0.  0.  1.  0.  0.  1.  -1.  -1.  0.  0.;
0.  0.  0.  0.  -0.3  1.  0.  0.  0.  -0.99  0.  0.;
0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  1.  -1.;
0.  0.  0.  0.  0.  0.  0.  -0.66  0.  -1.1  0.  1.]::Array{Float64,2}

aa=[1.30303  -1.0101  1.;
-0.30303  1.0101  0.;
-0.333333  1.11111  0.66]::Array{Float64,2}

ia=3::Int64

js=[5  6  8]::Array{Int64,2}

(aaJulia,iaJulia,jsJulia)=buildA!(hForA,qCols,neq)
isapprox(aaJulia,aa) &&
isapprox(iaJulia,ia)&&
isapprox(jsJulia,js)
end;

#tweaked= False
# test buildA! oneEquationNoLead example
function oneEquationNoLeadFalse()::Bool


neq=1::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,1,2)

hForA=[0.  2.  3.]::Array{Float64,2}

aa=hcat([-0.666667])::Array{Float64,2}

ia=1::Int64

js=hcat([2])::Array{Int64,2}

(aaJulia,iaJulia,jsJulia)=buildA!(hForA,qCols,neq)
isapprox(aaJulia,aa) &&
isapprox(iaJulia,ia)&&
isapprox(jsJulia,js)
end;

#tweaked= False
# test buildA! reliablePaperExmpl example
function reliablePaperExmplFalse()::Bool


neq=5::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,5,10)

hForA=[0.  0.  0.  0.  0.  0.  0.  0.  -0.5  0.  0.  -1.  0.7  -0.5  1.;
0.  0.  0.  0.  0.  0.  0.  0.  1.  -0.5  0.  0.  0.  0.  -0.5;
0.  0.  0.  0.  0.  -1.  0.  1.  -0.4  0.  0.  0.  -0.9  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.]::Array{Float64,2}

aa=[0.  0.  0.  0.;
-1.11111  1.11111  -0.444444  0.;
-1.55556  1.55556  2.37778  -2.;
0.  0.  2.  -1.]::Array{Float64,2}

ia=4::Int64

js=[6  8  9  10]::Array{Int64,2}

(aaJulia,iaJulia,jsJulia)=buildA!(hForA,qCols,neq)
isapprox(aaJulia,aa) &&
isapprox(iaJulia,ia)&&
isapprox(jsJulia,js)
end;

#tweaked= False
# test buildA! athan example
function athanFalse()::Bool


neq=9::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,9,18)

hForA=[-0.5  0.  0.  0.  0.  0.  0.  0.  0.  1.  -0.18  0.  0.  -1.  0.  0.  0.  0.  -0.5  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  -0.293  -0.764  0.293  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  -1.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -2.  -1.  1.  1.  0.  0.  2.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -0.911  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  -1.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -1.  0.  0.  0.  0.  0.  0.  0.  0.  1.]::Array{Float64,2}

aa=[0.  1.  0.  0.  0.  0.  0.;
-1.  2.  -0.36  0.  0.  -2.  0.;
0.  0.293  0.764  -0.293  0.  0.  0.;
-2.  4.293  0.044  -0.293  -0.911  -4.  0.;
0.  0.  0.  0.  0.911  0.  0.;
0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  1.]::Array{Float64,2}

ia=7::Int64

js=[1  10  11  12  13  14  18]::Array{Int64,2}

(aaJulia,iaJulia,jsJulia)=buildA!(hForA,qCols,neq)
isapprox(aaJulia,aa) &&
isapprox(iaJulia,ia)&&
isapprox(jsJulia,js)
end;

#tweaked= False
# test buildA! habitmod example
function habitmodFalse()::Bool


neq=12::Int64;nlag=4::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,12,60)

hForA=[0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  -1.  -1.  0.  0.  3.45419  0.  0.  -0.74118  0.00208517  0.494116  -0.1149;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -0.88879  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.52802  0.  0.11279  0.031833  0.024734  0.  0.  0.  0.  0.  0.  0.  -0.71526  0.  0.042076  -0.22829  -0.012267  0.  0.  0.  0.  0.  0.  0.  0.22215  0.  -0.14172  0.26679  -0.11959  0.  0.  0.  0.  0.  0.  0.  -0.42308  0.  -0.61076  -0.10946  0.17172  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  -0.00011277;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.46436  0.  0.16131  0.02744  0.17087  0.  0.  0.  0.  0.  0.  0.  -1.3425  0.  0.16794  -0.35818  -0.09837  0.  0.  0.  0.  0.  0.  0.  1.06382  0.  -0.02255  0.51594  0.08949  0.  0.  0.  0.  0.  0.  0.  -0.46672  0.  -0.11369  -1.10657  -0.26021  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  -0.00141;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -0.23292  0.  0.08512  -0.04213  0.14149  0.  0.  0.  0.  0.  0.  0.  0.03313  0.  0.15223  0.01572  -0.34762  0.  0.  0.  0.  0.  0.  0.  0.70552  0.  -0.24697  0.21888  -0.07805  0.  0.  0.  0.  0.  0.  0.  -0.56316  0.  -0.08268  -0.16054  -0.68637  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  -0.00348;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  -41.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -1.  40.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -0.99853  0.  0.  0.  0.  0.  -0.00147  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -1.00083  0.  0.  0.  0.  0.  25.9459  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -0.00146853  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  -1.  0.  0.  0.  0.  0.  -0.99578  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -1.  0.  -0.99578  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  -1.  0.  0.  0.  -0.99578  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.]::Array{Float64,2}

aa=[0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.;
-0.155117  -0.0214875  -0.0117771  0.00589435  0.185738  0.00238782  0.0597264  -0.0268822  0.00412584  0.0149078  -0.0493113  0.0238367  -0.872076  0.88879  0.89334  0.100478  -0.103176  -3.54054  36.5013  1.42383  0.744321  -0.00209401  -0.49621  0.114628;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.88879  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
-0.52802  -0.11279  -0.031833  -0.024734  0.71526  -0.042076  0.22829  0.012267  -0.22215  0.14172  -0.26679  0.11959  0.42308  0.  0.61076  0.10946  -0.17172  0.  0.  0.  0.  0.  0.  0.00011277;
-0.46436  -0.16131  -0.02744  -0.17087  1.3425  -0.16794  0.35818  0.09837  -1.06382  0.02255  -0.51594  -0.08949  0.46672  0.  0.11369  1.10657  0.26021  0.  0.  0.  0.  0.  0.  0.00141;
0.23292  -0.08512  0.04213  -0.14149  -0.03313  -0.15223  -0.01572  0.34762  -0.70552  0.24697  -0.21888  0.07805  0.56316  0.  0.08268  0.16054  0.68637  0.  0.  0.  0.  0.  0.  0.00348;
0.005823  -0.002128  0.00105325  -0.00353725  -0.00082825  -0.00380575  -0.000393  0.0086905  -0.017638  0.00617425  -0.005472  0.00195125  0.014079  0.  0.002067  -0.0209865  0.0171593  1.025  0.  0.  0.  0.  0.  0.000087;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.99853  0.  0.  0.  0.  0.  0.00147  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -681.515  0.  0.  0.  0.  0.  17667.9  680.953  0.  0.  0.  0.;
0.530258  0.113268  0.0319679  0.0248388  -0.718291  0.0422543  -0.229257  -0.012319  0.223091  -0.142321  0.267921  -0.120097  -0.424873  0.  0.39089  -0.109924  0.172448  0.  0.  0.  1.00424  0.  0.  -0.000113248;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  684.403  0.  0.  0.  0.  0.  -17742.8  -682.835  0.  1.00424  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -1.00276  0.  0.  0.  0.  0.  1.00276  0.  0.  0.  1.00424  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.]::Array{Float64,2}

ia=24::Int64

js=[13  15  16  17  25  27  28  29  37  39  40  41  49  50  51  52  53  54  55  56  57  58  59  60]::Array{Int64,2}

(aaJulia,iaJulia,jsJulia)=buildA!(hForA,qCols,neq)
isapprox(aaJulia,aa) &&
isapprox(iaJulia,ia)&&
isapprox(jsJulia,js)
end;
#tweaked= True
# test buildA! firmvalue example
function firmvalueTrue()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,4,8)

hForA=[0.  0.151186  0.  0.377964  2.91033  -0.377964  0.  -0.377964  -2.64575  -2.64575  0.  0.;
0.  0.  0.  0.  0.  -0.367457  0.  0.081357  -0.000000000000000111022  0.918643  -1.  -0.081357;
0.  0.  0.  0.  0.  0.0325428  0.  0.081357  -0.000000000000000111022  -0.081357  1.  -0.081357;
0.  0.  0.  0.  0.  0.0325428  0.  -0.918643  0.  -0.081357  0.  0.918643]::Array{Float64,2}

aa=[0.  0.  0.  1.  0.;
0.  0.  0.  0.  1.;
0.0571429  0.142857  1.1  -0.542857  -0.142857;
0.0000000000000000154194  0.0000000000000000385485  0.000000000000000296824  0.4  -0.0000000000000000316816;
0.00000000000000000136558  0.00000000000000000341394  0.0000000000000000262874  -0.0000000000000000059744  1.]::Array{Float64,2}

ia=5::Int64

js=[2  4  5  6  8]::Array{Int64,2}

(aaJulia,iaJulia,jsJulia)=buildA!(hForA,qCols,neq)
isapprox(aaJulia,aa) &&
isapprox(iaJulia,ia)&&
isapprox(jsJulia,js)
end;

#tweaked= True
# test buildA! firmvalue3Leads2Lags example
function firmvalue3Leads2LagsTrue()::Bool


neq=4::Int64;nlag=2::Int64;nlead=3::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,12,20)

hForA=[0.  0.151186  0.  0.  0.  0.  0.  0.377964  3.52149  -0.377964  0.  -0.377964  0.  -2.64575  0.  0.  0.  0.  0.  0.  -2.64575  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.31411  0.  0.  0.  0.  0.  -0.109152  0.0000000000000000496507  -0.785275  0.447214  0.109152;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.193439  0.  0.  0.  0.  0.  0.036384  -0.0000000000000000993014  -0.483598  1.34164  -0.036384;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.0325428  0.  0.  0.  0.  0.  -0.918643  0.  -0.081357  0.  0.918643]::Array{Float64,2}

aa=[0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.;
0.0571429  0.  0.142857  1.331  -0.142857  -0.142857  0.  -1.  0.  0.  0.  0.;
0.00000000000000000770971  0.  0.0000000000000000192743  0.000000000000000179578  -0.0000000000000000192743  -0.0000000000000000192743  0.  0.4  0.  0.  0.  0.;
0.000000000000000000682789  0.  0.00000000000000000170697  0.0000000000000000159039  -0.00000000000000000170697  -0.00000000000000000170697  0.  -0.0000000000000000157012  0.  0.  0.  1.]::Array{Float64,2}

ia=12::Int64

js=[2  6  8  9  10  12  13  14  16  17  18  20]::Array{Int64,2}

(aaJulia,iaJulia,jsJulia)=buildA!(hForA,qCols,neq)
isapprox(aaJulia,aa) &&
isapprox(iaJulia,ia)&&
isapprox(jsJulia,js)
end;

#tweaked= True
# test buildA! example7 example
function example7True()::Bool


neq=4::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,4,8)

hForA=[0.  0.  0.  -0.133359  -1.78594  -2.11707  -0.392232  -2.55049  2.55049  5.07353  0.  0.;
0.  0.  0.  -0.000185865  0.916751  -0.710058  -0.000546661  0.703553  -0.703553  0.000000000000000201662  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.971449  0.000000000000000111022  0.0923723  0.916025  -1.;
0.  0.  0.  0.  0.  0.  0.  -0.688551  0.000000000000000111022  -1.00763  -0.0839749  1.]::Array{Float64,2}

aa=[0.  0.  0.  0.  1.;
-0.00026418  1.30303  -1.00925  -0.000777001  1.;
0.026418  -0.30303  0.924631  0.0777001  0.0000000000000000793282;
0.0290598  -0.333333  1.01709  0.0854701  -0.34;
0.0290598  -0.333333  1.01709  0.0854701  0.66]::Array{Float64,2}

ia=5::Int64

js=[4  5  6  7  8]::Array{Int64,2}

(aaJulia,iaJulia,jsJulia)=buildA!(hForA,qCols,neq)
isapprox(aaJulia,aa) &&
isapprox(iaJulia,ia)&&
isapprox(jsJulia,js)
end;

#tweaked= True
# test buildA! oneEquationNoLead example
function oneEquationNoLeadTrue()::Bool


neq=1::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,1,2)

hForA=[0.  2.  3.]::Array{Float64,2}

aa=hcat([-0.666667])::Array{Float64,2}

ia=1::Int64

js=hcat([2])::Array{Int64,2}

(aaJulia,iaJulia,jsJulia)=buildA!(hForA,qCols,neq)
isapprox(aaJulia,aa) &&
isapprox(iaJulia,ia)&&
isapprox(jsJulia,js)
end;

#tweaked= True
# test buildA! reliablePaperExmpl example
function reliablePaperExmplTrue()::Bool


neq=5::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,5,10)

hForA=[0.  0.  0.  0.176777  0.  2.47487  0.  -3.07591  -1.16673  0.883883  0.  0.  2.54558  0.  1.23744;
0.  0.  0.  0.0456435  0.  -0.0912871  -0.000000000000000430211  -0.063901  -1.32366  0.593366  0.  0.  -0.000000000000000138778  0.  0.684653;
0.  0.  0.  0.  0.  0.  0.  0.  0.396985  0.  -0.185051  0.608919  -0.555779  0.396985  -0.793969;
0.  0.  0.  0.  0.  0.  0.  0.  0.171857  0.  0.90769  0.251405  -0.2406  0.171857  -0.343714;
0.  0.  0.  0.  0.  0.  0.  0.  0.171857  0.  -0.0923097  1.2514  -0.2406  0.171857  -0.343714]::Array{Float64,2}

aa=[0.  0.  0.  0.  1.  0.;
0.00000000000000000799096  0.000000000000000269662  0.0000000000000000000000000000000847867  -0.000000000000000232586  0.000000000000000233541  -0.00000000000000008237;
-0.0000000000000000081508  0.000000000000000130413  0.000000000000000000000000000000135135  -0.0000000000000000434709  0.000000000000000260826  -0.000000000000000130413;
-0.037037  -1.03704  -0.000000000000000305455  1.16296  -0.481481  0.0740741;
-0.185185  -1.18519  0.000000000000000829091  1.81481  2.19259  -1.62963;
-0.0666667  0.133333  0.000000000000000628364  0.0933333  1.93333  -0.866667]::Array{Float64,2}

ia=6::Int64

js=[4  6  7  8  9  10]::Array{Int64,2}

(aaJulia,iaJulia,jsJulia)=buildA!(hForA,qCols,neq)
isapprox(aaJulia,aa) &&
isapprox(iaJulia,ia)&&
isapprox(jsJulia,js)
end;

#tweaked= True
# test buildA! athan example
function athanTrue()::Bool


neq=9::Int64;nlag=1::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,9,18)

hForA=[1.81663  0.220548  -0.0845818  0.262983  0.  0.  0.  0.  0.288675  -2.88675  0.623538  -0.288675  -0.57735  3.17543  0.  -0.866025  0.  -0.288675  1.73205  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  -0.27752  -0.723637  0.27752  0.0481292  0.  0.  0.  0.  0.0528312  0.105662  1.  -0.0528312  -0.105662  -0.0528312  -1.  -0.158494  0.  -0.0528312;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.0154795  0.040363  -0.0154795  0.0481292  0.  0.  0.  0.  0.0528312  -1.89434  -1.  0.947169  0.894338  -0.0528312  0.  1.84151  0.  -0.0528312;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.0154795  0.040363  -0.0154795  -0.862871  0.  0.  0.  0.  0.0528312  0.105662  -0.0000000000000000277556  -0.0528312  0.894338  -0.0528312  0.  -0.158494  -1.  -0.0528312;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.0154795  0.040363  -0.0154795  0.0481292  0.  0.  0.  0.  0.0528312  0.105662  -0.0000000000000000277556  -0.0528312  -0.105662  0.947169  0.  -0.158494  0.  -0.0528312;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.0154795  0.040363  -0.0154795  0.0481292  0.  0.  0.  0.  0.0528312  0.105662  -0.0000000000000000138778  -0.0528312  -0.105662  -0.0528312  1.  -0.158494  0.  -0.0528312;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.0154795  0.040363  -0.0154795  0.0481292  0.  0.  0.  0.  0.0528312  0.105662  0.  -0.0528312  -0.105662  -0.0528312  0.  0.841506  0.  -0.0528312;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.0154795  0.040363  -0.0154795  0.0481292  0.  0.  0.  0.  0.0528312  0.105662  0.0000000000000000138778  -0.0528312  -0.105662  -0.0528312  0.  -0.158494  1.  -0.0528312;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.0154795  0.040363  -0.0154795  0.0481292  0.  0.  0.  0.  -0.947169  0.105662  0.0000000000000000277556  -0.0528312  -0.105662  -0.0528312  0.  -0.158494  0.  0.947169]::Array{Float64,2}

aa=[0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.;
-1.04883  -0.127333  0.0488333  -0.151833  -0.166667  1.66667  -0.36  0.166667  0.333333  -1.83333  0.5  0.166667;
0.000000000000000630462  0.0000000000000000765411  -0.0000000000000000293541  0.0000000000000000912683  0.000000000000000100185  0.293  0.764  -0.293  -0.000000000000000215244  0.00000000000000110203  -0.000000000000000300554  -0.0000000000000000872174;
-2.09767  -0.254667  0.0976667  -0.303667  -0.333333  3.62633  0.044  0.0403333  -0.244333  -3.66667  1.  0.333333;
0.000000000000000732351  0.0000000000000000889108  -0.000000000000000034098  0.000000000000000106018  0.000000000000000116375  -0.000000000000000661836  0.00000000000000036025  -0.000000000000000147509  0.911  0.00000000000000128013  -0.000000000000000349126  -0.00000000000000011136;
0.000000000000000307953  0.000000000000000037387  -0.0000000000000000143382  0.0000000000000000445806  0.0000000000000000489359  -0.000000000000000259757  0.000000000000000181346  -0.0000000000000000726352  -0.000000000000000106897  0.000000000000000538295  -0.000000000000000146808  -0.0000000000000000279076;
0.000000000000000438953  0.0000000000000000532909  -0.0000000000000000204375  0.0000000000000000635446  0.0000000000000000697525  -0.000000000000000420302  0.000000000000000192476  -0.000000000000000082093  -0.000000000000000141591  0.000000000000000767278  -0.000000000000000209258  -0.0000000000000000656222;
0.000000000000000540841  0.0000000000000000656607  -0.0000000000000000251814  0.0000000000000000782943  0.0000000000000000859433  -0.00000000000000054093  0.000000000000000211156  -0.0000000000000000909909  -0.000000000000000176286  0.000000000000000945376  -0.00000000000000025783  1.]::Array{Float64,2}

ia=12::Int64

js=[1  2  3  4  9  10  11  12  13  14  16  18]::Array{Int64,2}

(aaJulia,iaJulia,jsJulia)=buildA!(hForA,qCols,neq)
isapprox(aaJulia,aa) &&
isapprox(iaJulia,ia)&&
isapprox(jsJulia,js)
end;

#tweaked= True
# test buildA! habitmod example
function habitmodTrue()::Bool


neq=12::Int64;nlag=4::Int64;nlead=1::Int64
qRows=(neq*nlead)::Int64;qCols=(neq*(nlag+nlead))::Int64


qq=zeros(Float64,12,60)

hForA=[-0.196092  0.  -0.0927502  -0.0044263  -0.0870373  0.  0.  0.  0.  0.  0.  0.  0.522757  0.  -0.0935315  0.147367  0.118321  0.  0.  0.  0.  0.  0.  0.  -0.514201  0.  0.106182  -0.258615  0.0279242  0.  0.  0.  0.  0.  0.  0.  0.632972  0.229485  0.2084  0.355429  0.200068  0.  0.000379552  0.  0.  0.  0.  0.258199  3.35957  0.0000000000000000555112  -3.61478  -4.13118  -0.258199  157.9  -97.6617  -7.22957  -3.42341  -3.61532  -3.74236  -0.22724  0.  0.  3.61478  0.  3.87298  -154.919  3.61478  3.62009  3.59953  3.59953  3.59953  0.;
-0.0364409  0.  -0.0172363  -0.000822567  -0.0161747  0.  0.  0.  0.  0.  0.  0.  0.0971472  0.  -0.0173815  0.0273861  0.0219884  0.  0.  0.  0.  0.  0.  0.  -0.095557  0.  0.0197324  -0.0480599  0.00518933  0.  0.  0.  0.  0.  0.  0.  0.117629  0.0426465  0.0387283  0.0660515  0.0371799  0.  0.0000705345  0.  0.  0.  0.  0.0479827  0.625386  0.000000000000000444089  -0.671758  -0.0479827  -0.0479827  -0.165741  -18.1765  -2.06326  -0.636194  -1.39054  -0.695467  -0.0422294  0.  0.  0.671758  0.  -0.0000000000000000971445  0.00000000000000133227  0.671758  1.39143  0.668923  1.38457  0.668923  0.;
-0.0214811  0.  -0.0101604  -0.000484885  -0.0095346  0.  0.  0.  0.  0.  0.  0.  0.057266  0.  -0.010246  0.0161435  0.0129617  0.  0.  0.  0.  0.  0.  0.  -0.0563287  0.  0.0116318  -0.0283302  0.00305899  0.  0.  0.  0.  0.  0.  0.  0.0693397  0.0251392  0.0228294  0.0389359  0.0219167  0.  0.0000415785  0.  0.  0.  0.  0.0282847  0.367445  0.000000000000000031225  -1.21741  -0.0282847  -0.0282847  -0.0977006  -10.6834  -0.394823  -1.19644  0.000521683  -0.409962  -0.0248933  0.  0.  1.21741  0.  0.0000000000000000763278  -0.00000000000000577316  0.395986  0.000000000000000201228  1.21227  -0.000578211  0.394315  0.;
-0.0153274  0.  -0.00724978  -0.00034598  -0.00680323  0.  0.  0.  0.  0.  0.  0.  0.0408611  0.  -0.00731085  0.0115189  0.00924854  0.  0.  0.  0.  0.  0.  0.  -0.0401923  0.  0.00829965  -0.0202145  0.00218268  0.  0.  0.  0.  0.  0.  0.  0.049476  0.0179376  0.0162895  0.0277819  0.0156382  0.  0.0000296675  0.  0.  0.  0.  0.020182  0.262183  0.0000000000000000104083  -0.000000000000000319189  -0.020182  -0.020182  -0.0697124  -8.49156  -0.281718  0.0149585  0.000372237  -1.16118  -0.0177621  0.  0.  0.0000000000000000971445  0.  0.0000000000000000971445  -0.00000000000000477396  1.1512  0.0000000000000000832667  -0.0000000000000000242861  -0.000412572  1.14635  0.;
-0.0119163  0.  -0.00563636  -0.000268983  -0.00528919  0.  0.  0.  0.  0.  0.  0.  0.0317676  0.  -0.00568384  0.00895538  0.0071903  0.  0.  0.  0.  0.  0.  0.  -0.0312476  0.  0.00645258  -0.0157158  0.00169693  0.  0.  0.  0.  0.  0.  0.  0.0384652  0.0139456  0.0126643  0.0215991  0.012158  0.  0.0000230651  0.  0.  0.  0.  0.0156905  1.1009  0.0000000000000978939  0.000000000000219994  -0.0156905  -0.0156905  -0.0541981  -28.9627  -1.11403  0.0116295  0.00160567  -0.00775296  -0.0138092  0.  0.  -0.000000000000000170003  0.  -0.0000000000000000589806  -0.00000000000000410783  -0.000000000000000142247  -0.00000000000000018735  -0.000000000000000246331  -0.00163148  -0.00000000000000019082  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -0.39069  0.  -0.0403489  -0.0298214  0.0476776  0.  0.  0.  0.  0.  0.  0.  0.311316  0.  0.0348916  0.115874  -0.0873389  0.  0.  0.  0.  0.  0.  0.  0.20149  0.  0.0594768  -0.0621964  0.10246  0.  0.  0.  0.  0.  0.  0.  -0.0902368  0.191856  0.46752  -0.185781  -0.35066  0.  -0.000321667  0.  0.  0.  0.  -0.218821  -0.207  -0.00886243  -0.628828  0.218821  0.218821  -0.715016  0.218821  0.0000000000000651146  0.153424  -0.00043163  -0.102282  0.241629;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -0.10974  0.  -0.0537692  0.00127517  -0.0293675  0.  0.  0.  0.  0.  0.  0.  0.137924  0.  -0.0404977  0.0515076  0.091476  0.  0.  0.  0.  0.  0.  0.  -0.16344  0.  0.130168  -0.115059  0.0866987  0.  0.  0.  0.  0.  0.  0.  0.571463  -0.482613  0.280614  -0.0465982  0.0850763  0.  0.000416683  0.  0.  0.  0.  0.283458  0.497859  0.0451412  -0.94262  0.127229  -0.283458  1.7197  -0.283458  -0.000000000000201839  -0.369003  0.00103812  0.246  -0.339805;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.16914  0.  -0.0834705  0.0344558  -0.131352  0.  0.  0.  0.  0.  0.  0.  0.0518368  0.  -0.140709  0.00842449  0.305196  0.  0.  0.  0.  0.  0.  0.  -0.667457  0.  0.216233  -0.219605  0.064336  0.  0.  0.  0.  0.  0.  0.  0.268713  0.170893  0.0859198  0.197978  0.603286  0.  -0.000364386  0.  0.  0.  0.  -0.0491785  -0.14596  -0.0463155  0.131808  -0.0523601  -0.862642  -0.504173  0.247882  0.0000000000000236478  0.108183  -0.000304352  -0.0721213  0.0690267;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.0573089  0.  0.0267312  0.00189935  0.0283755  0.  0.  0.  0.  0.  0.  0.  -0.17685  0.  0.0290868  -0.0478714  -0.0304009  0.  0.  0.  0.  0.  0.  0.  0.169275  0.  -0.0197478  0.0800256  0.00306391  0.  0.  0.  0.  0.  0.  0.  0.120641  -0.377425  -0.0349752  -0.142242  -0.0623092  0.  0.000320215  0.  0.  0.  0.  0.318504  -0.767477  1.19213  0.795583  0.118067  0.0530521  -2.65101  -0.217833  0.000000000000103473  0.568839  -0.00160032  -0.379223  -0.230675;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.153223  0.  0.0555128  0.00811169  0.0559904  0.  0.  0.  0.  0.  0.  0.  -0.425783  0.  0.0563394  -0.115171  -0.0412687  0.  0.  0.  0.  0.  0.  0.  0.345864  0.  -0.0219033  0.171188  0.017707  0.  0.  0.  0.  0.  0.  0.  0.481873  0.504273  -0.0655464  -0.334226  -0.0913117  0.  0.000968726  0.  0.  0.  0.  0.167028  0.104058  -0.671428  -0.0557897  0.292287  0.0343027  0.359435  -0.658997  0.0000000000000154876  -0.0771255  0.000216978  0.0514166  -0.179521;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  -0.536153  0.  -0.145961  -0.0365903  -0.129564  0.  0.  0.  0.  0.  0.  0.  1.30161  0.  -0.128183  0.354905  0.0292209  0.  0.  0.  0.  0.  0.  0.  -0.848094  0.  0.00239141  -0.459645  -0.0707033  0.  0.  0.  0.  0.  0.  0.  0.541578  0.0193783  0.190797  0.958162  0.0814752  0.  0.000229904  0.  0.  0.  0.  0.0319166  0.0448262  -0.0666291  -0.217552  -0.873343  0.169175  0.154838  -0.156397  -0.0000000000000492939  -0.0332242  0.0000934702  0.0221493  -0.0364049;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.0236245  0.  -0.0177052  0.0058426  -0.0266397  0.  0.  0.  0.  0.  0.  0.  0.0306994  0.  -0.0282777  0.00717588  0.057066  0.  0.  0.  0.  0.  0.  0.  -0.138474  0.  0.0395484  -0.0480997  0.0101315  0.  0.  0.  0.  0.  0.  0.  0.583804  -0.195633  0.0169456  0.0539355  0.114044  0.  0.000710653  0.  0.  0.  0.  -0.817659  -0.125308  0.34542  0.123596  -0.0258243  -0.156794  -0.432838  -0.483438  0.0000000000000102141  0.0928759  -0.000261289  -0.0619168  0.832639]::Array{Float64,2}

aa=[0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.  0.  0.  0.  0.  0.;
0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  0.  1.;
0.0188078  0.00889597  0.000424541  0.00834803  -0.205257  -0.0125166  -0.0259116  -0.00545424  0.235056  -0.00779641  0.084531  -0.0295605  -0.0565845  -0.0220106  -0.0050805  -0.0834016  0.00464751  -0.0000364041  -0.0247647  -0.847311  0.88879  0.89334  0.125243  -0.0784117  -3.455  36.5261  1.42383  0.725966  -0.00204237  -0.483974  0.136424;
0.000000000000704368  0.000000000000333462  0.0000000000000159074  0.000000000000312691  -0.00000000000186303  0.000000000000338073  -0.000000000000528215  -0.000000000000425879  0.00000000000183014  -0.00000000000038156  0.000000000000923141  -0.0000000000000977257  -0.00000000000227416  -0.00000000000082433  -0.000000000000749912  -0.00000000000127179  -0.000000000000722037  -0.00000000000000136183  -0.000000000000926694  -0.0000000000625267  0.88879  -0.0000000000000864067  0.000000000000918961  0.000000000000937418  0.00000000000355106  0.00000000171093  0.0000000000659581  -0.000000000000759538  0.00000000000000228394  0.000000000000505906  0.000000000000805292;
-0.000000000000287758  -0.000000000000135463  -0.00000000000000647308  -0.000000000000127675  -0.52802  -0.11279  -0.031833  -0.024734  0.71526  -0.042076  0.22829  0.012267  -0.22215  0.000000000000337488  0.14172  -0.26679  0.11959  0.000000000000000560021  0.000000000000379341  0.42308  0.0000000000000353095  0.61076  0.10946  -0.17172  -0.00000000000142158  -0.000000000696652  -0.0000000000267421  0.000000000000309801  -0.000000000000000885078  -0.000000000000207286  0.00011277;
-0.000000000000287257  -0.000000000000135915  -0.00000000000000649466  -0.000000000000127506  -0.46436  -0.16131  -0.02744  -0.17087  1.3425  -0.16794  0.35818  0.09837  -1.06382  0.000000000000335862  0.02255  -0.51594  -0.08949  0.00000000000000055518  0.000000000000378348  0.46672  0.0000000000000352509  0.11369  1.10657  0.26021  -0.00000000000144928  -0.000000000698429  -0.0000000000268811  0.000000000000309224  -0.000000000000000945532  -0.000000000000206706  0.00141;
-0.00000000000028981  -0.000000000000137231  -0.00000000000000656196  -0.000000000000128559  0.23292  -0.08512  0.04213  -0.14149  -0.03313  -0.15223  -0.01572  0.34762  -0.70552  0.00000000000033761  0.24697  -0.21888  0.07805  0.000000000000000560107  0.000000000000383438  0.56316  0.0000000000000354508  0.08268  0.16054  0.68637  -0.00000000000145446  -0.000000000705993  -0.000000000027161  0.000000000000311674  -0.00000000000000114119  -0.000000000000209013  0.00348;
-0.000267415  -0.000126486  -0.00000603627  -0.000118695  0.0065359  -0.00225555  0.00125422  -0.00337589  -0.00152948  -0.00366095  -0.00074568  0.00872858  -0.0167748  0.000312954  0.00645845  -0.00498729  0.00222409  0.000000517606  0.000352113  0.0137269  0.000000000000000341185  0.002067  -0.0213386  0.0168071  1.02378  -0.000352113  -0.000000000000677776  0.000260979  -0.000000734215  -0.000173985  -0.000222893;
-0.000000000000289176  -0.000000000000136778  -0.00000000000000652758  -0.000000000000128352  0.000000000000764688  -0.000000000000138775  0.000000000000216845  0.000000000000174761  -0.000000000000751143  0.000000000000156697  -0.000000000000379016  0.0000000000000400668  0.000000000000933686  0.00000000000033842  0.000000000000307918  0.000000000000522271  0.00000000000029601  0.000000000000000559721  0.000000000000380766  0.99853  0.000000000000035189  0.0000000000000352454  -0.000000000000376852  -0.000000000000385008  -0.00000000000146392  0.00147  -0.0000000000270477  0.000000000000311606  -0.00000000000000106981  -0.000000000000207874  -0.000000000000330568;
7.2839  3.44524  0.164417  3.23303  -19.418  3.47426  -5.474  -4.39509  19.1002  -3.94416  9.60633  -1.03725  -23.512  -8.52429  -7.74109  -13.2025  -7.4316  -0.0140986  -9.59089  -671.924  -0.0000000000597287  -0.000000000134096  9.59089  9.59089  33.1287  17677.5  680.953  -7.10857  0.0199986  4.73902  8.44091;
0.010742  0.00508088  0.000242474  0.00476792  0.501621  0.118392  0.0238951  0.0183571  -0.690123  0.0364377  -0.21509  -0.0138487  0.188417  -0.0125712  -0.153737  0.24845  -0.131057  -0.000020792  -0.0141442  -0.410729  -0.0000000000000138867  0.39089  -0.0957797  0.186592  0.0488567  0.0141442  0.0000000000269208  0.993754  0.0000294931  0.00698888  0.012335;
-7.30402  -3.45476  -0.164871  -3.24196  19.4717  -3.48386  5.48912  4.40724  -19.1529  3.95506  -9.63287  1.04012  23.5769  8.54784  7.76248  13.239  7.45213  0.0141376  9.61739  674.786  0.0000000000600033  0.000000000134713  -9.61739  -9.61739  -33.2202  -17752.4  -682.835  7.12822  0.984184  -4.75211  -8.46424;
0.010742  0.00508088  0.000242474  0.00476792  -0.0286368  0.00512368  -0.0080728  -0.00648168  0.028168  -0.00581666  0.014167  -0.00152969  -0.0346744  -0.0125712  -0.0114162  -0.0194705  -0.0109598  -0.000020792  -0.0141442  -0.988617  -0.0000000000000137519  0.0000000000000133251  0.0141442  0.0141442  0.0488567  1.01691  0.0000000000271688  -0.0104834  0.0000294931  1.01123  0.0124483;
-0.000000000000287666  -0.000000000000136065  -0.00000000000000649346  -0.000000000000127683  0.0000000000007607  -0.000000000000138082  0.00000000000021572  0.000000000000173804  -0.000000000000746991  0.000000000000155844  -0.000000000000377  0.0000000000000399331  0.00000000000092863  0.000000000000336655  0.000000000000306328  0.000000000000519431  0.000000000000294456  0.0000000000000005568  0.000000000000378779  0.0000000000255436  0.0000000000000351794  0.0000000000000352594  -0.000000000000374813  -0.000000000000382841  -0.0000000000014494  -0.000000000698507  -0.0000000000269065  0.000000000000310154  -0.000000000000000976625  -0.000000000000206784  1.]::Array{Float64,2}

ia=31::Int64

js=[1  3  4  5  13  15  16  17  25  27  28  29  37  38  39  40  41  43  48  49  50  51  52  53  54  55  56  57  58  59  60]::Array{Int64,2}

(aaJulia,iaJulia,jsJulia)=buildA!(hForA,qCols,neq)
isapprox(aaJulia,aa) &&
isapprox(iaJulia,ia)&&
isapprox(jsJulia,js)
end;


end
