"""
    reducedForm(qq, qrows, qcols, bcols, condn)

Compute reduced-form coefficient matrix, b.
"""
function reducedForm(qq::Array{Float64,2}, qrows::Int64, qcols::Int64, bcols::Int64, neq::Int64, condn::Float64) 

    bb = zeros(qrows, bcols)
    
    left = 1 : (qcols - qrows)
    right = (qcols - qrows + 1) : qcols
    qtemp = qq
    
    nonsing = ( 1 / cond(qq[:, right], 1) ) > condn
    if nonsing
        qtemp[:, left] = -qq[:, right] \ qq[:, left]
        bb = qtemp[1 : neq, 1 : bcols]
    else  # rescale by dividing row by maximal qr element
        # 'inverse condition number small, rescaling '
        themax = maximum(abs.(qtemp[:, right]), 2)
        oneover = diagm(1 ./ themax[:, 1])
        
        nonsing = ( 1 / cond( oneover*qtemp[:, right], 1) ) > condn
        if nonsing
            qtemp[:, left] = -(oneover*qtemp[:, right]) \ (oneover*(qtemp[:, left]))  
            bb = qtemp[1:neq, 1:bcols]
        end
    end

    return (nonsing, bb)

end # reducedForm
