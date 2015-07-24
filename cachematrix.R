## series of functions to cache a matrix, and calculate the inverse
## if inverse has been preiously calculated, will return stored calculation
## instead of re-calculating

## makeCacheMatrix - Arguments:matrix
##                   Creates a 'cached' version of a matrix that stores
##                   the inverse of the natrix if it has been previously
##                   calculated
##                   Available functions for cached matrix are:
##                       set - stores a new matrix the object (clears inverse)
##                       get - returns the matrix in the object
##                       setsolve - calculates the inverse for the matrix
##                       getsove - returns the stored inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}

## cacheSolve      - Arguments: 'cached' matrix from makeCacheMatrix
##                   Returns the inverse of the matrix by calling the
##                   argument objext's internal functions

cacheSolve <- function(x) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getsolve()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    
    data <- x$get()
    m <- solve(data)
    x$setsolve(m)
    m
}
