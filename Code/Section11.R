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

#11.0.0.0.1
# See Mdfd_Intro2.R
