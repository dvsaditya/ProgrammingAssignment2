## This Program is written so that expensive functions can do their operations faster. This program implements the inverse function
## Accordingly the calculated inverse isstored in cache for the next implementation. 

## This function returns a list of functions that will be used the next function to calculte the inverse and extract the cached data 
##if applicable fast

makeCacheMatrix <- function(x = matrix()) {
  cache<-matrix()
  set<-function(y){
    x<<-y
    cache<<-matrix()
  }
  get<-function() x
  setinv<-function(inv) cache<<-inv
  getinv<-function() cache
  list(set=set,get=get,setinv=setinv,getinv=getinv)
}


##This function is used to extract cached data for the particular value if it is available. Otherwise it will continue and execute 
##the inverse function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  cache<-x$getinv()
  if(!is.na(cache))
  {
    message("getting cached data")
    return(cache)
  }
  data<-x$get()
  cache<-solve(data,...)
  x$setinv(cache)
  m
}
