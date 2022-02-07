
## Two functions to cache the inverse of a matrix
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

## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }
    ## Get matrix 
    data <- x$get()
    ## Calculate inverse
    m <- solve(data) %*% data
    ## set the inverse 
    x$setInverse(m)
    ## return  matrix
    m
}
