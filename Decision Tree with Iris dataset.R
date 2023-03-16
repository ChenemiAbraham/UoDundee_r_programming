data("iris") # we will use the iris dataset for classification
View(iris) # we want to see the data set as table

# we have 150 samples in our dataset

summary(iris) # to observe our dataset
set.seed(555) # for data partition
ind <- sample( 2, nrow(iris), replace = TRUE, prob = c(0.8,0.2))

train <- iris[ind ==1, ]
test <- iris[ind ==2, ]

install.packages("party")
install.packages("rpart")
install.packages("rpart.plot")
library(party) # for decision tree model
library(rpart)
library(rpart.plot)
tree <- rpart(Species ~., train)
rpart.plot(tree)

# This is a typical Decision tree 
