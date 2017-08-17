## Coursera R Programming Week 3 Assignment
## Lexical scoping - saving inverse matrix in a cache and retrieving when available

## Function to:
## 1) create the matrix
## 2) get the matrix
## 3) create the inverse
## 4) get the inverse

makeCacheMatrix <- function(x = matrix()) {
     inv <- NULL
     set <- function(y) {
          x <<- y
          inv <<- NULL
     }
     get <- function() x
     setinv <- function(solve) inv <<- solve
     getinv <- function() inv
     list(set = set, get = get,
          setinv = setinv,
          getinv = getinv)
}

## Function to:
## 1) Check to see if an inverse matrix has already been created
## 2) If not, runs solve function, puts inverse in cache
## 3) If so, prints cached matrix, skipping computation

cacheSolve <- function(x, ...) {
     inv <- x$getinv()
     if(!is.null(inv)) {
          message("getting cached data")
          return(inv)
     }
     data <- x$get()
     inv <- solve(data, ...)
     x$setinv(inv)
     inv
}