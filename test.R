m1<-matrix(c(1,2,3,4),2,2)
m2<-matrix(c(1,2,3,0,1,4,5,6,0),3,3)
c<-makeCacheMatrix(m1)
cacheSolve(c)
cacheSolve(c)
#-2  1.5
# 1 -0.5
c$set(m2)
cacheSolve(c)
cacheSolve(c)
#-24   18    5
# 20  -15   -4
# -5    4    1