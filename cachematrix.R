## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Define four functions in the file, and create the list contains four object(set(), get(), setinverse(), getinverse()).
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
    x <<- y
    m <<- NULL
}
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  P = list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  return(P)
}

## Write a short comment describing this function
## There are two ways to get the inverse of the matrix
## 1. use the getinverse() function to get the inverse of the matrix.
## 2. use the build-in function solve to set the inverse of the function as m and return it.

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  return(m)
}
        ## Return a matrix that is the inverse of 'x'
        ## m stores the inverse of the matrix which is returned by the cacheSolve function.
