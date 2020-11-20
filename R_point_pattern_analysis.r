#point pattern analysis
install.packages("spatstat")
library(spatstat)
#POINT PATTERN ANALYSIS: DENSITY OF THINGS COLLECTED, CLUMPED. how much dense are out data in the landscape
#interpolation
#let's see the density with spatstat
setwd("C:/lab/")
covid <- read.table("covid_agg.csv", header=TRUE)
covid
attach(covid)
#x, y, ranges with maximum and minimum
covid_planar <- ppp(lon, lat, c(-180,180), c(-90,90))
density_map <- density (covid_planar)
plot(density_map)
points(covid_planar)
#changing color: specify new argument cl
cl <- colorRampPalette(c('yellow','blue','pink'))(100) #
plot(density_map, col  = cl)
points(covid_planar)
