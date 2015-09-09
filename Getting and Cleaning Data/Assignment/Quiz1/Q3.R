## NGAP.xlsx
## need to specify the row number and column number when read in

## Read rows 18-23 and columns 7-15 into R and assign the result to a variable called:
## dat 
## What is the value of:
## sum(dat$Zip*dat$Ext,na.rm=T) 

library(xlsx)

dat <- read.xlsx("NGAP.xlsx", sheetIndex = 1, header = T,startRow=18, endRow=23, colIndex=7:12)
sum(dat$Zip*dat$Ext,na.rm=T) 
##[1] 36534720