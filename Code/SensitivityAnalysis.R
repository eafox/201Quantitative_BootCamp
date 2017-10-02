#!/usr/bin/Rscript
#Author: "Emma Fox (eafox@ucla.edu)"

# Setup Statements #

# Initial Values and Parameters #

LogGrowth<-function(N0=10,rd=2,kk=200,ttMax=10,doPlot=TRUE){
  #simulate logistic growth
  NN<-matrix(NA,nrow=1,ncol=ttMax+1)
  NN[1]<-N0
  
  for (tt in 1:ttMax){
    NN[tt+1] <- NN[tt] * (1 + rd * (1 - (NN[tt] / kk)))
  }
  
  #plots get produced outside workspace
  if (doPlot==TRUE){
    plot(0:ttMax,NN,xlab="Time",ylab="Population Size",col="blue")
  }
  
  return(NN)
}

#Define parameter range values for one variable. ex: Sensitivity to growth rate at time 5
rdVals<-seq(-1,1,by=0.05)
PopSize5<-matrix(NA,nrow=1,ncol=length(rdVals))
PopNum<-1
# Perform Calculations #
#Run through different values in the range
for (ii in rdVals){
  PopSize<-LogGrowth(N0=100,rd=ii,kk=200,ttMax=10,doPlot=F)
  PopSize5[PopNum]<-PopSize[6]
  PopNum<-PopNum+1
}

plot(rdVals,PopSize5,xlab = "Growth Rate", ylab = "Population Size (after time step 5)",type = 'b',col="red")

# Visualize Results #

#Second way to to plot
plot(0, type='n',xlab = "Growth Rate", ylab = "Population Size (after time step 5)")
lines(rdVals,PopSize5,type="l")
length(rdVals)
length(PopSize5)
