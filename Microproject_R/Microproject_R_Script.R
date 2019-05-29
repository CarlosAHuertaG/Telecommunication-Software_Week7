library(expm)
Q <- matrix(c(-3,3,5,-5),nrow=2,ncol=2,byrow=TRUE)
index <- c(1)
ROW1_1 <-  matrix(c(0:100),nrow=1,ncol=101,byrow=TRUE)
ROW1_2 <-  matrix(c(0:100),nrow=1,ncol=101,byrow=TRUE)
ROW2_1 <-  matrix(c(0:100),nrow=1,ncol=101,byrow=TRUE)
ROW2_2 <-  matrix(c(0:100),nrow=1,ncol=101,byrow=TRUE)
for (t in seq(0,10,by=0.1))
{
  P = expm(Q*t);
  ROW1_1[index] = P[c(1),c(1)];
  ROW1_2[index] = P[c(1),c(2)];
  ROW2_1[index] = P[c(2),c(1)];
  ROW2_2[index] = P[c(2),c(2)];
  index = index +1;
}
t <- seq(0,10,by=0.1)
plot(t,ROW1_1,type="l",xlim=c(0.0,10),ylim=c(0.0,1),col="blue")
par(new=T)
plot(t,ROW1_2,type="l",xlim=c(0.0,10),ylim=c(0.0,1),col="blue")
par(new=T)
plot(t,ROW2_1,type="l",xlim=c(0.0,10),ylim=c(0.0,1),col="red")
par(new=T)
plot(t,ROW2_2,type="l",xlim=c(0.0,10),ylim=c(0.0,1),col="red")
par(new=F)