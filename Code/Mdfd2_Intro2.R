#!/usr/bin/Rscript

#FileName: Mdfd2_Intro2.R
#Author: "Emma Fox (eafox@ucla.edu)"
#Second modified Intro2.R file to plot regression using log(light)

X <- read.csv('ChlorellaGrowth.csv',comment.char='#')
# using '#' as a comment character allows us the CSV file to be self-documenting
Light <- X[,1]
rmax <- X[,2]
LogLight=log(Light)
LogRmax=log(rmax)
# get the log of light instead of just light

par(cex=1.5,cex.main=0.9)
par(mfcol=c(2,1))
plot(rmax~Light,data=X,xlab="Light intensity (uE/m2/s)",ylab="Maximum growth rate (1/d)",pch=16) + 
  title(main="Data from Fussmann et al. (2000) system") + 
  abline(lm(rmax~Light)) 
plot(LogRmax~LogLight,data=X,xlab="Log light intensity (uE/m2/s)",ylab="Log maximum growth rate (1/d)",pch=16) + 
  title(main="Data from Fussmann et al. (2000) system") + 
  abline(lm(LogRmax~LogLight)) 
# xlab and ylab are x and y axis labels, pch is "plotting character"
# cex is 'character expansion' - cex=1.5 increases symbol & label sizes by 50%
# cex.main sets the character expansion for the main title of the plot 


par(mfcol=c(1,2))
plot(rmax~Light,data=X,xlab="Light intensity (uE/m2/s)",ylab="Maximum growth rate (1/d)",pch=16) + 
  title(main="Data from Fussmann et al. (2000) system") + 
  abline(lm(rmax~Light)) 
plot(LogRmax~LogLight,data=X,xlab="Log light intensity (uE/m2/s)",ylab="Log maximum growth rate (1/d)",pch=16) + 
  title(main="Data from Fussmann et al. (2000) system") + 
  abline(lm(LogRmax~LogLight)) 
