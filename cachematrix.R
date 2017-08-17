## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


## Assignment examples
## Function to:
## 1) set the value of the vector
## 2) get the value of the vector
## 3) set the value of the mean
## 4) get the value of the mean


makeVector <- function(x = numeric()) {
     m <- NULL
     set <- function(y) {
          x <<- y
          m <<- NULL
     }
     get <- function() x
     setmean <- function(mean) m <<- mean
     getmean <- function() m
     list(set = set, get = get,
          setmean = setmean,
          getmean = getmean)
}

## Function to:
## 1) Check to see if a mean has already been calculated
## 2) If not, calculating mean of vector, putting in cache
## 3) If so, using cached mean, skipping computation

cachemean <- function(x, ...) {
     m <- x$getmean()
     if(!is.null(m)) {
          message("getting cached data")
          return(m)
     }
     data <- x$get()
     m <- mean(data, ...)
     x$setmean(m)
     m
}