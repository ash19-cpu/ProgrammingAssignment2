## Put comments here that give an overall description of what your
## functions do

## The functions written below comput the inverse of a matrix given as an input

## Write a short comment describing this function

## This function creates a special matrix object which can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
	x <<- y
	inv <<- NULL
}
get <- function() x
seti <- function(inverse) inv <<- inverse
geti <- function() inv
list(set=set, get=get, seti=seti, geti=geti)
}

## Write a short comment describing this function

## This function computes the inverse of the matrix returned by the above function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$geti()
	if(!is.null(inv)) {
	message("getting cached result")
	return(inv)
}
data <- x$get()
inv <- solve(data, ...)
x$seti(inv)
inv
}
