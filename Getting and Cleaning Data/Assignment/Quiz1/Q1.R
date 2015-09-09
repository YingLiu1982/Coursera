## HousingData.csv & HousingDataDic.pdf
## How many properties are worth $1,000,000 or more? 53

data <- read.csv("HousingData.csv")
rst<- data$VAL == 24
summary(rst)

##Use the data you loaded from Question 1. Consider the variable FES in the code book. Which of the "tidy data" principles does this variable violate?
##Tidy data has one variable per column.