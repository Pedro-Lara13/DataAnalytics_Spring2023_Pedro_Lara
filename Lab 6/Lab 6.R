#Lab that will show the use of Cook's Distance using a baseball data set
library(ISLR)
library(dplyr)
#look at a hitters dataset from the textbook
Hitters
help("Hitters")
head(Hitters)
dim(Hitters)
is.na(Hitters) #Checking for missing values in the dataset
#Will then need to remove the missing values
HittersData <- na.omit(Hitters)
dim(HittersData)
glimpse(HittersData) #glimpse() part of dplyr package
head(HittersData)
#Will now implement a multivariate regression model using all the features
#in the dataset in order to predict a player's salary
SalaryPredictModel1 <- lm(Salary ~., data = HittersData)
summary(SalaryPredictModel1)
#Multiple R-Squared: 0.5461, Adjusted R-Squared: 0.5106
#Now will use Cook's Distance
cooksD <- cooks.distance(SalaryPredictModel1)
influential <- cooksD[(cooksD > (3 * mean(cooksD, na.rm = TRUE)))]
influential
#There 18 players who have a Cook's Distance 3 times greater than the mean
#Will then exclude these 18 players and rerun the model to see if it is
#possible to get a better fit in our original regression model
influentialnames <- names(influential) #checking names of the outliers
influentialnames
outliers <- HittersData[influentialnames,]
HitterswoOutliers <- HittersData %>% anti_join(outliers)

#Model 2 will predict without the outliers
SalaryPredictModel2 <- lm(Salary ~., data = HitterswoOutliers)
summary(SalaryPredictModel2)
#Multiple R-Squared: 0.6721, Adjusted R-Squared: 0.6445
#We have improved from an Adjusted R-Squared of 0.5106 to 0.6445
#This was accomplished by simply removing 18 observations