## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function returns a list of three functions 
## 1. setting the inverse of a matrix
## 2. setting inverse of matrix (solving and keeping in cache)
## 3. getting the inverse stored in cache
## every time a matrix is set, its inverse is set to null. Hence if the inverse is not a null we know its been calculated before
## we can use this stored value of inverse instead.

makeCacheMatrix <- function(x = matrix()) {
  x_inv <- NULL
  set <- function(y){
    x_inv <<- NULL
    x <<-y
  }
  set_inv <- function(inverse) x_inv <- inverse
  get_inv <- function() x_inv

}


## Write a short comment describing this function
## This function first checks if inverse for the matrix x has already been calculated in previous calculations.
## If yes, it uses the x_inv value stored in cache, else it freshly computes the inverse, stores it in cache and returns it also.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  x_inv <- x$get_inv()
  if(!is.null(x_inv)){
    return(x_inv) 
  }
  x_inv <- solve(x,...)
  x$set_inv <- x_inv
  x_inv
}
