#!/usr/bin/Rscript
#Author: "Emma Fox (eafox@ucla.edu)"

##################
# MY INITIAL TRY #
##################

# Setup Statements #

# Initial Values and Parameters #

PopSize<-100
Rval<-1.05
SizeVect<-numeric()
Years<-seq(1,10)

# Perform Calculations #

for (ii in Years){
  NewSize <- Rval * PopSize
  SizeVect[ii] <- NewSize
  PopSize <- NewSize
}

# Visualize Results #

plot(Years,SizeVect)

############
# METHOD 2 #
############
# THIS STRUCTURE IS MORE MATHEMATICALLY CORRECT #
## COPIED FROM SLIDES ##

# Setup Statements #

# Initial Values and Parameters #

N0<-100
RR<-1.05
ttMax<-10

NN<-matrix(NA,nrow=1,ncol=ttMax+1)
NN[1]<-N0

# Perform Calculations #

for (tt in 1:ttMax){
  NN[tt+1] <- RR * NN[tt]
}

# Visualize Results #

plot(0:ttMax,NN,xlab="time",ylab="N",col="blue")

