## restaurant.xml
## does not work with the URL https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml 
## used the downloaded file

## How many restaurants have zipcode 21231?

library(XML)
doc <- xmlTreeParse("restaurants.xml",useInternal=T)
rootNode <- rootNode <- xmlRoot(doc)
zip <- xpathSApply(rootNode[[1]],"//zipcode",xmlValue)
rst<- zip==21231
summary(rst)

##127
