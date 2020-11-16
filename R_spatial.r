#see the different spreading of elements in a spatial context
#x and y components of meuse
library(sp)
data(meuse)
#coordinates: state to R that we're going to use them
#explain to R that the coordinates are those two
coordinates(meuse) = ~x+y
#now if you plot the dataset you will see it in space
plot(meuse)
#we wanna see other variables
#spplot function to plot elements spread in space
#we have to choose a column for the element. in brackets. concentration of zinc in space
spplot(meuse, "zinc")
spplot(meuse, "zinc", main="zinc concentration distribution")
#plot another element 
spplot(meuse, "copper", main="copper concentration distribution")
#plot copper and zinc together: we want to invent a new dataset: array. c symbol
#when to use the c symbol?
spplot(meuse, c("copper", "zinc"), main="copper and zinc")
#rather than using colors, we'll use bubbles
bubble(meuse,"zinc")
bubble(meuse,"lead")

## installing ggplot2 package
install.packages("ggplot2")
library(ggplot2)
#ecological dataframe
#biofuels array
biofuels <- c(120, 200, 350, 570, 750) #array of values: c
#oxydative enzime 
oxydative <- c(1200, 1300, 2100, 34000, 50000)
#data.frame function
d <- data.frame(biofuels, oxydative)
#it's the same to do data.frame(biofuels, oxydative)
#let's set the plot
ggplot(d, aes (x=biofuels, y=oxydative))
#you don't see anything because you have to specify geometry
#function geom
ggplot(d, aes(x=biofuels, y=oxydative)) + geom_point()
#now you see the points
ggplot(d, aes(x=biofuels, y=oxydative)) + geom_point(col="pink", size=2)
#when you increase the kJ of bifuels you increase the oxydative power
ggplot(d, aes(x=biofuels, y=oxydative)) + geom_line()
#points + lines
ggplot(d, aes(x=biofuels, y=oxydative)) + geom_point(size=5, col="green") + geom_line()
#polygon 
ggplot(d, aes(x = biofuels, y = oxydative)) + geom_polygon()
## import data from a folder in the disk
setwd("C:/lab/")
#read.table function for importing external data to R
covid <- read.table ("covid_agg.csv", header=TRUE)

