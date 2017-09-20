#!/usr/bin/Rscript

#FileName: Section12.R
#Author: "Emma Fox (eafox@ucla.edu)"
#Exercises for section 12

#12.1.0.0.1
# Original method
a <- 1.1
b <- 0.001
T <- seq(from=1,to=200,by=1)
N <- numeric(length(T))
n <- 2
for (t in T) {
  n <- a*n/(1+b*n)
  N[t] <- n
}
plot(T,N)
# Second method
T<-seq(from=1,to=350,by=1)
N <- numeric(length(T))
for (t in 1:length(T)) {
  n <- a*n/(1+b*n)
  N[t] <- n
}
plot(T,N)
# It works

#12.1.0.0.2
# Second method
T<-c(1)
N <- numeric(length(T))
for (t in 1:length(T)) {
  n <- a*n/(1+b*n)
  N[t] <- n
}
plot(T,N)
# When T has a length of 1, only a single point it plotted
T<-numeric()
N <- numeric(length(T))
for (t in 1:length(T)) {
  n <- a*n/(1+b*n)
  N[t] <- n
}
plot(T,N)
# When T is empty (or has a length of 0) an error is plotted instead of an empty graph because T has no length
# and vectors of different lengths cannot be used to plot x and y coordinates

#12.0.0.0












