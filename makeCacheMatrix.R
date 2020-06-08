# This function uses the <<- operator which can be used to assign a value to an object in an environment that is different from the current environment. 
# This function is used to create a special object that stores a matrix and cache's its inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}