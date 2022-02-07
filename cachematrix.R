## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(m = matrix()) {
    ## Init
    i <- NULL
    ## set  matrix
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }
    ## get  matrix
    get <- function() {
    	## Return the matrix
    	m
    }
    ## set  inverse of matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }
    ## inverse the matrix
    getInverse <- function() {
        ## Return the inverse property
        i
    }
    ## Return list
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
