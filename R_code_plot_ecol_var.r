#Today we're plotting ecological variables and relationship among variables
#We're going to use a database from a pre-made table, a package. Also, you can import new functions in R as a package. Es. rasterdiv.
#Today we're gonna use the sp package. See the reference manual and vignettes: code explained
#How to install packages? https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/install.packages
#"brackets" serve to take a package from the outside
install.packages("sp")
#selected italy CRAN 
#We can use the package with the library function: Loading/Attaching and Listing of Packages
#We do not need brackets here
library(sp)
#DATA. Meuse is a dataset. Function data is used to recall datasets
data(meuse)
#meuse: This data set gives locations and topsoil heavy metal concentrations etc.
#meuse is imported. to see it type meuse
meuse
#View function: invoke a data viewer
#R is case sensitive: you have to write View with the capital letter
View(meuse)
#head of the set: head function
head(meuse)
#mean of all the variables: how to get them?

summary(meuse)
#all the statistic of all the variables in the dataset
#TO DO A PLOT WITH TWO VARIABLES
head(meuse)
#we see the variables, let's say, cadmium(poison) and zinc
#cadmium x, zinc y
#LET'S MAKE AN ERROR
plot(cadmium, zinc)
#object cadmium is not found, nor zinc
#cadmium and zinc are inside our dataset meuse
#$ 
plot(meuse$cadmium, meuse$zinc)
#OR WE CAN USE THE attach function, which attach a set to R. It attach a set so R knows that everytime we ask for a variable, the program knows it is in the attached data
attach(meuse)
plot(cadmium,zinc)
#me dealing with pinky things
plot(cadmium, zinc, col="pink", pch=6, main="cadmium vs zinc")
#relationship between all these variables?
#trivial way: plot one by one
#pairs function: scatterplot matrices 
pairs(meuse)
#cadmium and cooper seems to be related. cadmium and lead are related too, etc. 

#pairing only the elements part of the dataset? how to do that?
#**SECOND LECTURE**
#to recall the package and the data: 
library(sp)
data(meuse)
attach(meuse)
#pair with soil variables?
#what are the numbers of the columns of these data? 3rd, 4th, 5th, 6th. 
#start from 3 until 6. the start requires a COMMA
pairs(meuse[,3:6])
#subset data frame rows: slice
#if you're using a dataset, by default R is considering columns. you can also filter by rows using some functions
#the column is starting from 1. to state what are the columns you're starting to count
#let's use the names of the columns

#tilde in R means equal (Alt+0126 with num tast)

pairs(~cadmium + copper + lead + zinc)
pairs(~cadmium + copper + lead + zinc, data=meuse)

#let's prettify the graph
pairs(~cadmium + copper + lead + zinc, data=meuse, col="pink", pch=17)
#par function for change single panels 




