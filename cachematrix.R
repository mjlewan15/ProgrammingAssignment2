## Put comments here that give an overall description of what your
## functions do

## This function finds the matrix, sets it as our function's variable, and then finds its inverse

makeCacheMatrix <- function(x = matrix()) {
        inver <- NULL
        set <- function(y){
                x <<- y
                inver <<- NULL
        }
        get<- function()x
        setinver<- function(inverse) inver<<-inverse
        getinver<- function()inver
        list(set=set, get=get, setinver=setinver, getinver=getinver)
        
}


## This function gets the cached data and uses the solve function to return the inverse of the matrix


cacheSolve <- function(x, ...) {
        inver<- x$getinver()
        if(!is.null(inver)){
                message("getting cached data")
                return(j)
        }
        mat <- x$get()
        inver <- solve(mat, ...)
        x$setinver(inver)
        inver
}
