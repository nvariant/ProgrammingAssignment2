### Assignment: Caching the Inverse of a Matrix

This programming assignment requires to write R function, 
which is able to cache matrices - potentially time-consuming computations. 

We had to write the following functions:

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then the
    `cachesolve` should retrieve the inverse from the cache.

