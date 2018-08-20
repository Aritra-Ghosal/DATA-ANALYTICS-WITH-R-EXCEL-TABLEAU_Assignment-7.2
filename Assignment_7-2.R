library(ggplot2)
library(dplyr)
library(tidyr)

#Question 1
g <- ggplot(mpg, aes(manufacturer))
g + geom_bar(aes(fill=class), width = 0.5) + labs( title = "Histogram on Categorical Variable", subtitle = "Manufacturer across Vehicle Classes")

#Question 2
library(car)
library(Matrix)
scatterplotMatrix(~mpg+disp+drat+wt+gear|cyl,data=mtcars, main="gear type")

#Question 
data(mtcars)
mtcars$gear <-factor(mtcars$gear,levels=c(3,4,5),
                     labels=c("3gears","4gears","5gears")) 
mtcars$am <- factor(mtcars$am,levels=c(0,1),
                    labels=c("Automatic","Manual")) 
mtcars$cyl <- factor(mtcars$cyl,levels=c(4,6,8),
                     labels=c("4cyl","6cyl","8cyl"))
qplot(mpg, data=mtcars, geom="density", fill=gear, alpha=I(.5), 
      main="Distribution of Gas Milage", xlab="Miles Per Gallon", 
      ylab="Density")   
