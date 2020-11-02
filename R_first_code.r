# hello this is my first R code

# how many primates in different recording sessions (5) as a dataset. when you have a set of things, an array, you should put a c 
# before the array


primates <- c(3, 5, 9, 15, 40)
primates

# new set
crabs <- c(100, 70, 30, 10, 5) 

# first plot in R (generic x-y plotting): arguments of the plot are the set of primates and the set of crabs
plot(primates, crabs)

#argument to change colors is col

plot(primates, crabs, col= "red")

#point character changed; pch
plot(primates, crabs, col= "red", pch=19)

#character exxageration 
plot(primates, crabs, col= "red", pch=19, cex=2 )
plot(primates, crabs, col= "pink", pch=19, cex=6)
plot(primates, crabs, col= "pink", pch=19, cex=6, main="my first ecological graph in R :)")

#make a table; create a dataframe 

ecoset <- data.frame (primates, crabs)

#ecological numbers
#(manual) mean number of individuals per site
(3+5+9+15+40)/5

#summary of the dataframe
summary(ecoset)
