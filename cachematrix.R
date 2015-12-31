
## This fun do as a matrix inverse
	
	
	makeCacheMatrix <- function(x = matrix()) {
	  m <- NULL             #m is a set for first
	  set <- function(y){   #set a matrix
	    x <<- y
	    m <<- NULL
	  }
	  get <- function() x   #get data from a matrix
	  setsolve <- function(inverse) m <<- inverse          	#get the inverse of a matrix
	  getsolve <- function() m
	  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
	}
	
	


	
	cachesolve <- function(x, ...) {         	#checkr the matrix calculated inverse 
	  m <- x$getsolve()
	  if (!is.null(m)){
	    message("getting cached data")
	    return(m)
	  }                                            	#if there not inverse calculated before
	  data <- x$get()                               
	  m <- solve(data)
	  x$setsolve(m)
	  m                                             #Return a matrix that is the inverse of 'x'
	}
