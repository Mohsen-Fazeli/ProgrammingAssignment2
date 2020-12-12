## There is a makeCachematrix's function
## makeCachematrix constitutes get, set, getinv, setinv

makeCacheMatrix <- function(x = matrix()){
  inv <- NULL      ##initilizing inverse as null
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function(){x}       ## function to get matrix x 
  setinverse <- function(inverse) {inv <<- inverse}
  getinverse <- function() {inverse}
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

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
