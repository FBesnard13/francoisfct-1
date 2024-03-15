# #Install & Load devtools package which will connect to GitHub to download the package I did
# #install.packages("devtools")
# library(devtools)
#
# #Copy Paste the URL in your navigator
# #https://api.github.com/repos/FBesnard13/francoisfct-1/tarball/HEAD
#
# Detach the package first (unload becacuse of .RProfile load)
# detach("package:francoisfct", unload = TRUE)
#
# #Replace the following code by the URL of the downloaded file
# devtools::install_local(r"(C:\Users\fbesnard\Downloads\FBesnard13-francoisfct-1-1d9281c.tar.gz)")
#
#
#
#
# #  Do everytime you want to use my functions in your scripts ====
#
# #Load my function in your scripts
# library(francoisfct)
#
#
# #  Tips & Tricks ====
#
# #Run this to see the list of functions I created
# help(package = 'francoisfct')
#
# #Run this to get more information avout a function (change the function name if needed)
# ?f_boxplot

