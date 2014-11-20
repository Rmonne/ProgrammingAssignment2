## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  x <- x
  solvedMatrix <- NULL
  
  get <- function() {x}
  setMatrix <- function(y) {
    solvedMatrix <<- NULL
    x <<- y
  }
  setsolvedMatrix <- function(y) {solvedMatrix <<- y}
  getMatrix <- function() {solvedMatrix}
  list(get = get, setMatrix = setMatrix, setsolvedMatrix = setsolvedMatrix, getMatrix = getMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getMatrix()
  if(!is.null(m)) {
    print("getting cached solved matrix")
    return(m)
  }
  m <- x$get()  
  print("solving matrix")
  sm <- solve(m)
  x$setsolvedMatrix(sm)
  sm
}

