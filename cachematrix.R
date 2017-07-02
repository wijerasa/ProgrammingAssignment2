## This function will create inverse of a matrix and store it in chache.

## Follwoing function creates a "matrix" object then chache its inverse.

makeCacheMatrix <- function(x = matrix()) {
	i<-NULL
	set<-function(y){
		x<<-y
		i<<-NULL
	}
	get<-function() x
	setinverse<- function(inverse) i <<- inverse
	getinverse<- function() i
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)


}


## Follwoing computes the iverse of the special "matrix" returned from "makeCacheMatrix". 
## If the inverse has already been calculated cached inverse will be retrieved.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
