"""
    deleteCols(x, cols)

Delete columns from a 2x2 matrix
"""
function deleteCols(xIn::Array{Float64, 2}, cols::Array{Int64, 1})
    (numRows, numCols) = size(xIn)

    numColDelete = length(cols)
    
    xOut = Array{Float64}(numRows, (numCols - numColDelete))
    
    xIndexIn  = 1
    xIndexOut = 1
    for ii in cols
        xColsIn =  xIndexIn : (ii - 1) 
        xColsOut =  xIndexOut : xIndexOut + length(xColsIn) - 1 
        
        
        xOut[:, xColsOut] = xIn[:, xColsIn]

        xIndexIn = ii + 1
        xIndexOut = xIndexOut + length(xColsIn)
    end

    if xIndexIn <= numCols
        xColsIn = xIndexIn : numCols
        xColsOut = xIndexOut : xIndexOut + length(xColsIn) - 1

        xOut[:, xColsOut] = xIn[:, xColsIn]
    end

    return xOut
end

"""
Overload method to support Int array input.
"""
function deleteCols(xIn::Array{Int64, 2}, cols::Array{Int64, 1})
    (numRows, numCols) = size(xIn)

    numColDelete = length(cols)
    
    xOut = Array{Int64}(numRows, (numCols - numColDelete))
    
    xIndexIn  = 1
    xIndexOut = 1
    for ii in cols
        xColsIn =  xIndexIn : (ii - 1) 
        xColsOut =  xIndexOut : xIndexOut + length(xColsIn) - 1 
        
        
        xOut[:, xColsOut] = xIn[:, xColsIn]

        xIndexIn = ii + 1
        xIndexOut = xIndexOut + length(xColsIn)
    end

    if xIndexIn <= numCols
        xColsIn = xIndexIn : numCols
        xColsOut = xIndexOut : xIndexOut + length(xColsIn) - 1

        xOut[:, xColsOut] = xIn[:, xColsIn]
    end

    return xOut
end
