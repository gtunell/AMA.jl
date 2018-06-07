#= 
  [y] = shiftright(x,n)

  Shift the rows of x to the right by n columns, leaving zeros in the
  first n columns.
=#

function shiftright(matrixIn, n)
	 numColumns = size(matrixIn, 1)	 

	 left = matrixIn[:, 1:n]

	 result = zeros(matrixIn)
	 result[:, (n + 1):numColumns] = left
end

