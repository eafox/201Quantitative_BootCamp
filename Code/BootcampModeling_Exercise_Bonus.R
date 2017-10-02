#!/usr/bin/Rscript
#Author: "Emma Fox (eafox@ucla.edu)"

#Define Function
RickMod<-function(N0=10,rd=0.5,kk=500,ttMax=15,doPlot=TRUE){
  #simulate logistic growth
  NN<-matrix(NA,nrow=1,ncol=ttMax+1)
  NN[1]<-N0
  
  for (tt in 1:ttMax){
    NN[tt+1] <- NN[tt] * exp(rd * (1 - (NN[tt] / kk)))
  }
  
  #plots get produced outside workspace
  if (doPlot==TRUE){
    plot(0:ttMax,NN,xlab="Time",ylab="Population Size",col="blue")
  }
  
  return(NN)
}

#List of parameter values
rmax=5
rdVals <- seq(0, rmax, by = 0.01)

#Open pdf to store
pdf("../Results/Bifurcation.pdf")

#Empty plot to add points to
plot(-1, -1, xlim = c(0, rmax), ylim = c(0, 1000), xlab = "r", ylab = "N")

for (ii in 1:length(rdVals)) {
  nVec <- RickMod(N0=10,rd=rdVals[ii],kk=150,ttMax=100,doPlot = FALSE)
  nPts <- unique(nVec[40:100])
  points(rep(rdVals[ii], length(nPts)), nPts, cex = 0.1, pch = 19)
}

dev.off()