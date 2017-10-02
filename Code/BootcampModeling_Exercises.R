#!/usr/bin/Rscript
#Author: "Emma Fox (eafox@ucla.edu)"

##############
# EXERCISE A #
##############

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

##############
# EXERCISE B #
##############

#Population decreases to n=0
NewVectA<-RickMod(20,-0.1,50,100)

#Population approached stable equilibrium without oscillation
NewVectB<-RickMod(ttMax = 50)

#Decaying oscillations around carrying capacity
NewVectC<-RickMod(10,2,100,100)

#Persistent, regular oscillations
NewVectD<-RickMod(100,2,500,50)

#Crazy, random-looking fluctuations (chaos)
NewVectE<-RickMod(20,3,50,100)

# R tends to be the key driver of these parameters

##############
# EXERCISE C #
##############

#Six test values for rd
rdVals<-seq(-2,2,by=0.75)
#Run through different values in the range
par(mfrow=c(3,2))
for (ii in rdVals){
  PopSize<-RickMod(N0=100,rd=ii,kk=500,ttMax=25)
}


##############
# EXERCISE D #
##############

nVec<-RickMod(N0=20,rd=1.05,kk=1000,ttMax = 100)
min(which(nVec>=500))

##############
# EXERCISE E #
##############

#Initialize vectors for plotting
rdVals<-seq(0.1,0.9,by=0.01)
halfLife<-matrix(NA,nrow=1,ncol=rdVals)

#Run simulation to get the half carrying capacity values for each rd
for (ii in 1:length(rdVals)){
  kk.input<-1000
  nVec<-RickMod(N0=20,rd=rdVals[ii],kk=kk.input,ttMax = 100,doPlot = F)
  halfLife[ii]<-min(which(nVec>=(kk.input/2)))
}

#Plot the 2 vectors
par(mfrow=c(1,1))
plot(rdVals,halfLife,xlab = "rd Values",ylab = "Time to half carrying capacity")

##############
# EXERCISE F #
##############

#Pseudo Code-
# Loop through each of the 2 vectors assigning all of the results from the same value a to the same row
# and all of the results from the same values of b to the same columns
# Start by initializing the matrix with length(r) rows and length(k) columns
# Run a for loop that iterates across all of the values in rVec
# Immediately initialize a 2nd loop that iterates across all of the values of kVec
# Then save the population size at 10 years to the position in the matrix corresponding to position(r), position(k)

##############
# EXERCISE H #
##############




