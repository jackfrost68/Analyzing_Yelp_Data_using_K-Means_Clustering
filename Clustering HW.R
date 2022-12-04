#importing the library 
library(caret)

#importing file with formulae
source('/Users/jacobnyamu/Desktop/Fall 2022/Machine Learning /Data/BabsonAnalytics.r')

#importing the dataset
df <- read.csv("/Users/jacobnyamu/Desktop/Fall 2022/Machine Learning /Data/Yelp.csv")

#cleaning up columns/variables
df$ID <- NULL
df = na.omit(df)

#standardizing the dataset
standardizer <- preProcess(df,method =c("center","scale"))
df <- predict(standardizer, df)
show(df)

#creating an elbow chart to determine the best number of clusters
elbowChart(df)

#setting random seed 
set.seed(1234)

#perform k-means clustering with k = 4
model <- kmeans(df,4)
plot(df, col=model$cluster)
model$centers

#checking the elbow chart after removing outliers 
elbowChart(df)

#removing outliers 
df=removeOutliers(df)

#perform k-means clustering with k = 4
model <- kmeans(df,4)
plot(df, col=model$cluster)
model$size
