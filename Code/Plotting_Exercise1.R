#!/usr/bin/Rscript

#FileName: Plotting_Exercise1.R
#Author: "Emma Fox (eafox@ucla.edu)"

##Part 1,2,3##
get_heights<-function(PopSize){
  heights<-rnorm(PopSize,mean = 69,sd = 10)
  #generates a vector of random heights for the specified pop size
  AvgHeight<-mean(heights)
  #calculate average height
  return(AvgHeight)
  #the function will give back average height
}

##Part 4##
mean_heights_100<-numeric()
#empty vector to put the mean heights in
for(i in 1:1000){
  mean_heights_100<-c(mean_heights_100,get_heights(100))
  #get 1000 means for studies sampling 100 individuals
}
length(mean_heights_100)
#check length to make sure the correct vector was generated

##Part 5##
mean_heights_1000<-numeric()
#empty vector to put the mean heights in
for(i in 1:1000){
  mean_heights_1000<-c(mean_heights_1000,get_heights(1000))
  #get 1000 means for studies sampling 1000 individuals
}
length(mean_heights_1000)
#check length to make sure the correct vector was generated

##Part 6##
#Check the max and min of each vector to check the bounds of the data
max(mean_heights_100)
max(mean_heights_1000)
min(mean_heights_100)
min(mean_heights_1000)
#Will use a range from 64 to 74

bins<-seq(65,73,by=.5)
#create the bin bounds

counts_100<-hist(mean_heights_100,breaks = bins,plot = F)$counts
counts_1000<-hist(mean_heights_1000,breaks = bins,plot = F)$counts
#get the counts for each bin

pdf(file = "../Results/Height_Histogram.pdf", width = 5, height = 5)
#make pdf
par(mfrow=c(1,1), mar=c(3,3,3,1))
#set dimensions
barplot(rbind(counts_100,counts_1000),col = c("red","blue"),beside = T,names.arg = seq(65,72.5,by=.5),
        xlab = "Average height (inches)", ylab = "Count", ylim = c(0,500)) 
#If min is 65.5 and max is 72.3, the range needs to be 65,72

#Create the barplot
legend(0,400,c("n=100","n=1000"),col=c("red","blue"),pch = 19)
#Insert legend
dev.off()
#stop device

