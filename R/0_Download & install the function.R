#  Just to when you want to update the package ====

#Install & Load devtools package which will connect to GitHub to download the package I did
#install.packages("devtools")
library(devtools)

#Install the package I did from GitHub
devtools::install_github("FBesnard13/francoisfct-1")


#  Do everytime you want to use my functions in your scripts ====

#Load my function in your scripts
library(francoisfct)


#  Tips & Tricks ====

#Run this to see the list of functions I created
help(package = 'francoisfct')

#Run this to get more information avout a function (change the function name if needed)
?f_boxplot
