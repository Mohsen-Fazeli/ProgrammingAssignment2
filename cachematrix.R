## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function(){x}
  setinverse <- function(inverse) {inv <<- inverse}
  getinverse <- function() {inverse}
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
cachesolve <- function(x, ...){
  inv <- x$getinverse()
  if (!is.null(inverse)) {
    massage("getting cache data")
    return(inv)
  }
  mat <- x$get
  inv <- solve(mat, ...)
  x$setinverse()
  inv
}
