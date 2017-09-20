#!/usr/bin/Rscript

#FileName: Section11.R
#Author: "Emma Fox (eafox@ucla.edu)"
#Exercises for section 11

#Download example files
course.url <- "http://kingaa.github.io/R_Tutorial/"
download.file(paste0(course.url,"Intro1.R"),destfile="Intro1.R",mode="w")
download.file(paste0(course.url,"Intro2.R"),destfile="Intro2.R",mode="w")
download.file(paste0(course.url,"ChlorellaGrowth.csv"),destfile="ChlorellaGrowth.csv",mode="w")
X <- read.csv("ChlorellaGrowth.csv",comment.char='#')
Light <- X[,1]
rmax <- X[,2]

#11.1.0.0.1
# See Mdfd_Intro2.R

#11.1.0.0.2
# Entering plot(fit) returns a series of graphs showing the distribution of error or residuals showing how normally distributed the data is and how much they affect the data.

#11.1.0.0.3
# Code beow has been copied from Intro2.R with modification for aixs values
par(cex=1.5,cex.main=0.9)
plot(rmax~Light,data=X,xlab="Log light intensity (uE/m2/s)",ylab="Maximum growth rate (1/d)",pch=16,xlim=c(0,120),ylim=c(1,4)) 
title(main="Data from Fussmann et al. (2000) system")

#11.1.0.0.4
# See Mdfd2_Intro2.R
 
#11.1.0.0.5
par(mfrow=c(2,2))
par(lty=1)
plot(1, xlim=c(3,8),ylim=c(15,45)) ; abline(a=3,b=5,col="red")
par(lty=2)
plot(1, xlim=c(3,8),ylim=c(15,45)) ; abline(a=3,b=5,col="blue")
par(lty=3)
plot(1, xlim=c(3,8),ylim=c(15,45)) ; abline(a=3,b=5,col="green")
par(lty=6)
plot(1, xlim=c(3,8),ylim=c(15,45)) ; abline(a=3,b=5,col="orange")

#11.1.0.0.6
dev.off()
plot(rmax~Light,data=X,xlab="Log light intensity (uE/m2/s)",ylab="Maximum growth rate (1/d)",pch=16,xlim=c(0,120),ylim=c(1,4)) 
title(main="Data from Fussmann et al. (2000) system")
dev.print(pdf,"../Results/11.1.0.0.6.pdf")
