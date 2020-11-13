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
