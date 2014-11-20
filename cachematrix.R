## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  solvedMatrix <- NULL
  
  setMatrix <- function(y) {
    solvedMatrix <<- NULL
    x <<- y
  }
  solveMatrix <- function(x) {solve(x)}
  getMatrix <- function {x}
  list(setMatrix = setMatrix, solveMatrix = solveMatrix, getMatrix = getMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getMatrix
  if(!is.null(m)) {
    print("getting cached solved matrix")
    sm <- x$solvedMatrix
    return(sm)
  }
  m <- x$getMatrix()
  print("solving matrix")
  x$solveMatrix(m)
  m
}
