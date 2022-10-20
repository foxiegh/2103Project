library("psych")
library(dplyr)


data <- read.table("card.csv",sep=",",skip=2,header=FALSE)

summary(data)

datapos<- filter(data, V19>= 0 & V20 >=0 & V21>=0 & V22 >=0 & V23>=0 & V24>=0)
nrow(datapos)

datapos <- filter(data, V12 == -2)

dataV13v2 <- filter(dataV13, V14 < 0) 
nrow(dataV13v2)

dataV14 <- (filterdataV13)

data_below3 <- subset(data, V12 =0)

a <- boxplot(data_below3$V2)


anrosummary
header <- scan("card.csv",sep=",",nlines=2,what=character())
set.seed(1234)
n = length(data$V1)
index <- 1:nrow(data)
testindex <- sample(index, trunc(n)/4)
test.data <- data[testindex,]
train.data <- data[-testindex,]

summary(test.data)

describe(test.data)
