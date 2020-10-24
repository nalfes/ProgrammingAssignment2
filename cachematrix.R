## Put comments here that give an overall description of what your
## functions do

## Caching the Inverse of a Matrix

makeCacheMatrix <- function(x = matrix()) {

        ## function to fix the value of the matrix 'x' pass in argument
                m <- NULL
                set <- function(y) {
                        x <<- y
                        m <<- NULL
                }
        ## function to return the matrix 'x' pass in argument        
                get <- function() x
        ## function to fix the inversion value of 'x' pass in argument        
                setinv <- function(solve) m <<- solve
        ## funciton to get the inverted matrix 'x'        
                getinv <- function() m
                
                matrix(set = set, get = get,
                     setinv = setinv,
                     getinv = getinv)
        
}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        
        ## read the inverted matrix if cached
                m <- x$getinv()
                
        ## message for debug        
                if(!is.null(m)) {
                        message("getting cached data")
                        return(m)
                }
                data <- x$get()
                m <- solve(data, ...)
                x$setinv(m)
                
                m
                

}
