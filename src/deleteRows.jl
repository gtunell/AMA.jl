"""
    deleteRows(x, cols)

Delete rows from a 2x2 matrix
"""
function deleteRows(xIn::Array{Float64, 2}, rows::Array{Int64, 1})
    (numRows, numCols) = size(xIn)

    numRowDelete = length(rows)
    
    xOut = Array{Float64}((numRows - numRowDelete), numCols)
    
    xIndexIn  = 1
    xIndexOut = 1
    for ii in rows
        xRowsIn =  xIndexIn : (ii - 1) 
        xRowsOut =  xIndexOut : xIndexOut + length(xRowsIn) - 1 
        
        
        xOut[xRowsOut, :] = xIn[xRowsIn, :]

        xIndexIn = ii + 1
        xIndexOut = xIndexOut + length(xRowsIn)
    end

    if xIndexIn <= numRows
        xRowsIn = xIndexIn : numRows
        xRowsOut = xIndexOut : xIndexOut + length(xRowsIn) - 1

        xOut[xRowsOut, :] = xIn[xRowsIn, :]
    end

    return xOut
end
