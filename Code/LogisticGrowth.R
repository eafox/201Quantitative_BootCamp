#!/usr/bin/Rscript
#Author: "Emma Fox (eafox@ucla.edu)"

# Setup Statements #

# Initial Values and Parameters #

N0<-10
rd<-2
kk<-200
ttMax<-10

NN<-matrix(NA,nrow=1,ncol=ttMax+1)
NN[1]<-N0

# Perform Calculations #

for (tt in 1:ttMax){
  NN[tt+1] <- NN[tt] * (1 + rd * (1 - (NN[tt] / kk)))
}

# Visualize Results #

plot(0:ttMax,NN,xlab="time",ylab="N",col="blue")

