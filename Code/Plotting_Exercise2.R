#!/usr/bin/Rscript
#Author: "Emma Fox (eafox@ucla.edu)"

##############
# EXERCISE 1 #
##############
#####
# a #
#####

#Set directory and load data
setwd("~/UCLA/QBC/Code")
snpsDataFrame=read.table("../Data/hapmap_CEU_r23a_chr2_ld-2.txt",header=TRUE)
snps=as.matrix(snpsDataFrame)

#Define function to get chi-squares
#COPIED FROM AnalyzeSNPdata.2017.student.R BY KIRK LOHMUELLER
compute_chisquare_2=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  #here we use the built-in function for the chi-sq distribution:
  exp_probs=c((1-freq)^2,2*freq*(1-freq),freq^2) #note, here we don't multiply by n
  chisq<-chisq.test(obscnts,p=exp_probs, correct = FALSE)$statistic
  return(chisq)
}

#Run chi square test and save pvals
#ALSO COPIED FROM AnalyzeSNPdata.2017.student.R BY KIRK LOHMUELLER
chisqs2=apply(snps,1,compute_chisquare_2)
pvals=pchisq(chisqs2,1,lower.tail=FALSE)

#####
# b #
#####
Prop5<-sum(pvals<0.05)/length(pvals) ; Prop5
Prop1<-sum(pvals<0.01)/length(pvals) ; Prop1
Prop01<-sum(pvals<0.001)/length(pvals) ; Prop01

#####
# c #
#####
num_pval<-length(pvals) ; num_pval

#####
# d #
#####
#For each integer up to length of the num_pval divide it by the length of num_pval
exp_pvals<-sapply(seq(1:num_pval),function(x){x/4014})
#Check the values match what they should
length(exp_pvals)
(3/num_pval)==exp_pvals[3]
(2017/num_pval)==exp_pvals[2017]

#####
# e #
#####
sort_pvals<-sort(pvals)

#####
# f #
#####
log_sort_pvals<-(-log10(sort_pvals))
log_exp_pvals<-(-log10(exp_pvals))

#####
# g #
#####
plot(log_sort_pvals,log_exp_pvals,xlab = "-log10(expected P-value)", ylab = "-log10(observed P-value)")

#####
# h #
#####
abline(a=0,b=1,col="red",lty=3,lwd=5)

#####
# i #
#####
pdf("../Results/QQPlot.pdf")
plot(log_sort_pvals,log_exp_pvals,xlab = "-log10(expected P-value)", ylab = "-log10(observed P-value)")
abline(a=0,b=1,col="red",lty=3,lwd=5)
dev.off()

##############
# EXERCISE 2 #
##############
#####
# a #
#####
zz<-read.table("../Data/pheno.sim.2014-2.txt", header=TRUE)

#####
# b #
#####
quant25<-quantile(zz$glucose_mmolperL,0.25)
Quant25<-quant25[[1]] ; Quant25

#####
# c #
#####
quant75<-quantile(zz$glucose_mmolperL,0.75)
Quant75<-quant75[[1]] ; Quant75

#####
# d #
#####
pdf("../Results/DensityPlot.pdf")
densityData<-density(zz$glucose_mmolperL)
plot(densityData, xlab = "Glucose level (mmol/L)", main = "Density plot of glucose levels (with upper and lower quartiles",col='red',lwd=3)
abline(v=Quant25,col="red")
abline(v=Quant75,col="red")
dev.off()

















