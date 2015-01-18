## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## set the value of the matrix
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    
    ## get the matrix
    get <- function() {
        x
    } 
    
    ## set the inverse of the matrix
    setmatrix <- function(solve)  {
        i <<- solve
    }
    
    ## get the inverse of the matrix
    getmatrix <- function()  {
        i
    }
    
    ## get the inverse of the matrix
    list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    ## get the inverse of the matrix        
    i <- x$getinverse()
    
    ## check if there is a cached matrix   
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    
    ## if not: get the inverse of the matrix   
    data <- x$get()
    i <- solve(data, ...)
    
    ## set the inverse of the matrix 
    x$setinverse(i)
    i
}
