#!/usr/bin/Rscript

#FileName: Bootcamp_Exercise1.R
#Author: "Emma Fox (eafox@ucla.edu)"

##EXERCISE 1##
for (i in 1:9){
  if (i==9){
    cat(paste("*",sep=""))
  }
  else{
    cat("\n")
  }
}

##EXERCISE 2##
for (i in 1:10){
  cat(paste("*","&",sep = ""))
}

##EXERCISE 3##
# Dogs-       Initial:10    Start:11    End:15
# Meatloaf-   Initial:0     Start:-4    End:-30
# Bubbles-    Initial:12    Start:-1    End:-4

##EXERCISE 4##
#modify to print presidential elections
years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
  }
  if(years[ii] %% 4 == 0) {
    #If the year is divisible by 4, it'll be a presidential election
    cat(years[ii], 'Hooray, presidential elections!', sep = '\t', fill = T)
  } 
}

##EXERCISE 5##
bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5)
interestRate <- 0.0125
#initialize a vector to put the new bank values in. Values will be written over
compounded<-rep_len(0,6)
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]
  }
compounded

##EXERCISE 6##
bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this

for (j in 1:5) {
  for (i in 1:length(bankAccounts)) {
    bankAccounts[i]<-bankAccounts[i]-house[i]-food[i]-fun[i]+income[i]
    #step 1 modify bankAccounts so that amounts reflect income and expenses
    bankAccounts[i]<-interestRate*bankAccounts[i] + bankAccounts[i]
    #step 2 get calculate interest and add to accounts from step 1
  }
  cat("\n",bankAccounts)
}

##EXERCISE 7##
bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this

for (j in 2015:2020) {
  for (i in 1:length(bankAccounts)) {
    if ((j %% 2 == 1) & ((i==1)|(i==3))){
      #This condition means, when the year is odd and the student is #1 or #3 do the following...
      bankAccounts[i]<-bankAccounts[i]-house[i]-food[i]-fun[i]+income[i]+5 
    }
    else{
      #For all other cases do this...
      bankAccounts[i]<-bankAccounts[i]-house[i]-food[i]-fun[i]+income[i]      
    }
    bankAccounts[i]<-bankAccounts[i]-house[i]-food[i]-fun[i]+income[i]
    #step 1 modify bankAccounts so that amounts reflect income and expenses
    bankAccounts[i]<-interestRate*bankAccounts[i] + bankAccounts[i]
    #step 2 get calculate interest and add to accounts from step 1
  }
  cat("\n",bankAccounts)
}

##EXERCISE 8##
TempNum<-1
SumNum<-0
while (TempNum<18){
  SumNum<-SumNum + TempNum
  #add the new number to the current sum
  TempNum<-TempNum + 1
  #create the next number
}
cat(SumNum)

##EXERCISE 9##
SizeMe<-function(x){
  if (x >= 1){
    cat("big")
  } else if (x <= -1){
    cat("small")
  } else if (x>-1 & x<1){
    cat("medium")
  }
}







