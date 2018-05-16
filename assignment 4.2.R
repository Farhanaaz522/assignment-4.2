#assignment 4.2
#1. Write a program to create barplots for all the categorical columns in mtcars.
mtcars_categorical <- subset(mtcars, select = c("cyl","vs","am","gear","carb"))
View(mtcars_categorical)
par(mfrow=c(1,5))
for(i in 1:5) {
  barplot(mtcars_categorical[,i], main=names(mtcars_categorical)[i])
}

#2. Create a scatterplot matrix by gear types in mtcars dataset. 
data(mtcars)
pairs(gear~., data=mtcars, col=mtcars$gear)

#3. Write a program to create a plot density by class variable. 
install.packages("caret")
library(caret)
data(mtcars)
x <- mtcars[,1:4]
y <- mtcars[,5]
x
y
scales <- list(x=list(relation="free"), y=list(relation="free"))
featurePlot(x=x, y=y, plot="density", scales=scales)
