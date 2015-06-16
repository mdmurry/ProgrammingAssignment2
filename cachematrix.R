## Put comments here that give an overall description of what your
## functions do

## This function creates a duplicate maxtrix to the one passed to it but
## empty to be used by cacheSolve function

makeCacheMatrix <- function(x = matrix()) {
  ## create an empty matrix
  invMatrix <- NULL
  ## set matrix changed flag (used by cacheSolve to decide whether
  ## to recalcuate solution or return previously calculated solution)
  matrixChanged <- TRUE
  ## determine number of rows and columns of original matrix
  colCount <- ncol(x)
  rowCount <-nrow(x)
  ## create new cache matrix of same dimensions (original assumed to be 'square' per instructions)
  invMatrix <- matrix(nrow = rowCount, ncol = colCount)
}


## This function uses the cache matrix created in makeCacheMatrix to
## place the inverse copy of the original matrix using solve()

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  ## determine if inverse matrix should be recalculated
  if (matrixChanged == FALSE)
  {
    ## if not changed then just return already calculated matrix
    invMatrix
  }

  ## just save solve(x) into cached matrix      
  invMatrix <<- solve(x)
  ## reset change flag to use cached value unless changed (again) by makeCacheMatrix
  matrixChanged <<- FALSE
}
