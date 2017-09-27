#!/usr/bin/Rscript
#Author: "Emma Fox (eafox@ucla.edu)"

# Setup Statements #

# Initial Values and Parameters #

LogGrowth<-function(N0=10,rd=2,kk=200,ttMax=10){
  #simulate logistic growth
  NN<-matrix(NA,nrow=1,ncol=ttMax+1)
  NN[1]<-N0
  
  for (tt in 1:ttMax){
    NN[tt+1] <- NN[tt] * (1 + rd * (1 - (NN[tt] / kk)))
  }
  
  #plots get produced outside workspace
  plot(0:ttMax,NN,xlab="Time",ylab="Population Size",col="blue")
  
  return(NN)
}

# Perform Calculations #

LogGrowth()
LogGrowth(10,2,300,100)
NewVect<-LogGrowth(kk=400)

# Visualize Results #


