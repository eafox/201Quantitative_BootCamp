#!/usr/bin/Rscript

#FileName: Section9.R
#Author: "Emma Fox (eafox@ucla.edu)"
#Exercises for section 9.1,9.2,9.3, and 9.6

#9.1.0.0.1
# a%%b = divide a by b and give the remainder
# a%/%b= give the number of times b can be multiplied into a (division without taking into account remainder)

#9.1.1.0.1
# If the length of the longer is not a multiple of the shorter, R will give an error message and not complete the calculation

#9.1.2.0.1
v<-seq(1,13,4)
v<-seq(1,5,0.2)

#9.1.2.0.2
# When to is less than from, the sequence will count down at the increments specified using by
# 3:1 gives v=(3 2 1)

#9.1.3.0.1
z<-c(1,3,5,7,9,11)
v<-z[seq(1,5,2)]
# using seq(1,5,2) produces a vector with numbers 1,3,5
# indexing vector z by this sequence gives the 1st (1), third (5), and fifth (9) values in the z vector

#9.1.3.0.2
v<-z[c(2,1,3)]

#9.1.3.0.3
z[9]<-11
# This sets the value of the undefined element as the value specified
# and fills in all the values between the last defined element and the new element with NA

#9.1.3.0.4
x<-1:10
CalcY<-function(x){
  y=(x-1)/(x+1)
}
for (i in x){
  y<-c(CalcY(x))
}
plot(x,y)
lines(x,y)

#9.1.3.0.5
# In the third case, x rounded to 7 decimal places was once again 2
# When subtracting in the 3rd case, the scientific notation becomes smaller than e-15 so the value is rounded

#9.1.3.0.6
G<-c(0.5^seq(1,10))
SumDiffF<-sum(G)-(1/(1-0.5))
H<-c(0.5^seq(1,50))
SumDiffH<-sum(H)-(1/(1-0.5))

#9.1.5.0.1
Light <- c(20,20,20,20,21,24,44,60,90,94,101)
rmax <- c(1.73,1.65,2.02,1.89,2.61,1.36,2.37,2.08,2.69,2.32,3.67)
lowLight <- Light[Light<50]
lowLightrmax <- rmax[Light<50]
# replacing the name lowLight for Light would re-write the Light vector to only include values under 50
# this would be the wrong thing to do because it would yield a new Light vector

#9.1.5.0.2
w<-runif(20)
wFltrd<-w[w < mean(w)]

#9.1.5.0.3
Pos<-which(w < mean(w))

#9.1.5.0.4
x[c(seq(1,length(x),3))]
x[c(TRUE, FALSE)]




