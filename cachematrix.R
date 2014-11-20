## these two functions create a cached inverted matrix, to decrease the workload
## of computing it multiple times

## this function creates a cached matrix, and has functions for geting and setting it

makeCacheMatrix <- function(x = matrix()) {
  solvedMatrix <- NULL
  # function to get the starting matrix
  get <- function() {x}
  # function to set a matrix as solved inverted matrix
  set <- function(y) {solvedMatrix <<- y}
  # function to get the inverted matrix
  getMatrix <- function() {solvedMatrix}
  ## a list to make all functions accessible
  list(get = get, set = set, getMatrix = getMatrix)
}


## this function returns a cached version of the inverted matrix,
## if it's not present it will generate, set and return the inverted matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ## checks if cached matrix is present, and returns
  m <- x$getMatrix()
  if(!is.null(m)) {
    print("getting cached solved matrix")
    return(m)
  }
  
  # get matrix, invert matrix, set matrix in different environment, and return inverted matrix
  m <- x$get()  
  print("solving matrix")
  sm <- solve(m)
  x$set(sm)
  sm
}

