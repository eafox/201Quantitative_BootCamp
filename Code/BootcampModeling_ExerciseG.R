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

#Initialize value vectors and matrix
rdVals<-seq(0.1,0.9,by=0.01)
kkVals<-seq(10,1000,by=10)
Pop10<-matrix(NA,nrow=length(kkVals),ncol=length(rdVals))
#Each row will represent one carrying capacity
#Each column will represent one r value

#Loop through every r value
for (ii in 1:length(rdVals)){
  #Loop through every k value
  for (jj in 1:length(kkVals)){
    #Run simulation
    nVec<-RickMod(N0=20,rd=rdVals[ii],kk=kkVals[jj],ttMax = 100,doPlot = F)
    #Store pop size at 10 years at carrying capacity row and r value column
    Pop10[jj,ii] <- nVec[10]
  }
}

#Plot a Contour plot
library(plotly)
pdf("../Results/Ricker_ContourPlot.pdf")
plot_ly(
  x=rdVals,
  y=kkVals,
  z=Pop10,
  type="contour"
)
dev.off()









