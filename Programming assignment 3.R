## Title: Programming Assignment 2- R Programming 
## 
## The purpose of the two functions here are to help cache the inverse of a matrix.
## The identity of the matrix inversion is computationally complex.
## To put in action, send an input argument in the form of a matrix:
## 
## In order to enable this caching, we will uitlize the makeCacheMatrix illustrated below.
## 
## Usage example:
## Let m= the makeCacheMatrix(x)
## m <- makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2))
## This statement will amalgamate an object, which will in turn be the input into this function as a variable of this type or matrix. 

## Here is the illustration of this type of matrix below in numeric and character form:
## x <- matrix (1:4, nrow=2, ncol=2)
## M <- makeCacheMatrix(x)      

makeCacheMatrix <- function(x = matrix()) {
  # We will utilize the exact same approach as the programming assignment directions in the following way.
  # makeCacheMatrix shall be created in this format:
  # There will be four functions amalgamated in a list
  # First, we we will set the matrix
  # Secondly, we will retrieve the matrix
  # Thirdly, we will set the inverse of the matrix
  # Fourthly, we will get the inverse of the matrix
  
  # This function will be set to NULL for the first run.
  # There will be a change when the value is set by said user of this code.
  # The code for this is as follows:
  inv <- NULL
  }
  
  
  # Now, we will get the function
  get <- function() x
  # Next we will set the value of the inverse matrix
  set_inverse <- function(inverse) inv <<- inverse
  # Then we will obtain the value of this said inverse matrix in the following way:
  get_inverse <- function() inv
  # Finally we will parson this into a list
  list(set = set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}

## Now we will move on the the demand: cacheSolve:
## When we are able to form this matrix, the person using this will use the cacheSolve function to cachesolve
## Below is the usage example for the cacheSolve
##
## x <- matrix(1:4, nrwo=2, ncol=2)
## m <- makeCacheMatrix(x)
## s <- cacheSolve (m)
## s returns
## below is the code
##     [,1] [,2]
##[1,]   -2  1.5
##[2,]    1 -0.5

cacheSolve <- function(x, ...) {
  # Finally in order to cache solve, we will return the matrix which is invers of x.
  inv <- x$get_inverse()
  if(!is.null(inv)) {
    message("getting cached inverse")
    # if cache is created directly return the inverse
    return(inv)
  }
  
  # Obtain the matrix
  data <- x$get()
  
  # Obtaining the inverse
  inv <- solve(data, ...)
  
  # Obtain the result in the object
  x$set_inverse(inv)
  
  # Return the newly computed result
  inv
}