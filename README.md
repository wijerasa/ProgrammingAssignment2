## Programming Assignment 2: Lexical Scoping

This describes the usage of cachematrix.R

```{r}
# Source cahcematrix.R to current R environment

source("cachematrix.R")

# Check loaded object to current R environment

ls()

# Creat 2 X 5 matrix

myMatrix<-matrix(1:10, 2,5)

# calling "makeCacheMatrix" on "myMatrix"

a<-makeCacheMatrix(myMatrix)

# First time we run "cacheSolve()" on a it will return inverse of a

cacheSolve(a)

# Second time we run run "cacheSolve()" on "a" it will return chached inverse of "a"

cacheSolve(a)


``` 
