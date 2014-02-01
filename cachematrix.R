## This pair of functions builds cache solution for inverting matrices
##
## First function below creates a special matrix 

makeCacheMatrix <- function(x = matrix()) {
    TheOne <- NULL
    set <- function(y) {
        x <<- y
        TheOne <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) TheOne <<- solve
    getinverse <- function() TheOne
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Next function inverses matrix, checking if this is already done. 
## If so, it takes and returns cached result

cacheSolve <- function(x, ...) {
    TheOne <- x$getinverse()
    if(!is.null(TheOne)) {
    message("Getting data from cache")
    return(TheOne)
    }
    data <- x$get()
    TheOne <- solve(data, ...)
    x$setinverse(TheOne)
    TheOne
}

## Extra code to check how the above pair works:

## Creates simple 2x2 matrix
c=rbind(c(1, -1/4), c(-1/4, 1))
## prints it
c
## inverts it and prints the result
solve(c)

## Creates special matrix with cache ability
Mat<-makeCacheMatrix(c)
## Inverts it
cacheSolve(Mat)
## Inverts it again, this time through cache
cacheSolve(Mat)

## Works!
