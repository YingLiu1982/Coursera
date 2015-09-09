## using the fread() command load the data into an R object
## DT 
## Which of the following is the fastest way to calculate the average value of the variable
## pwgtp15 
## broken down by sex using the data.table package?

## rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2] Error in rowMeans(DT) : 'x' must be numeric
## mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15) Correct
## sapply(split(DT$pwgtp15,DT$SEX),mean) Correct
## tapply(DT$pwgtp15,DT$SEX,mean) Corrent
## DT[,mean(pwgtp15),by=SEX] Correct
## mean(DT$pwgtp15,by=DT$SEX) mean of pwgtp15 not broken down by SEX

## run the corrent command 1000 times to get the comparison

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileURL,destfile="./ID.csv",method = "wininet")
DT <- fread("ID.csv")
system.time(for(i in 1:1000){DT[,mean(pwgtp15),by=SEX]})