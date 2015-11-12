#Chapter 3, Exercise 1
######################
FluData <- read.table(file="c:/RFiles/BirdFluM.txt", header=T)
names(FluData)
str(FluData)
FluData$X2003cases
sum(FluData$X2003cases)
sum(FluData$X2005cases)
FluData$sumcases = rowSums(FluData[,2:7])
FluData$sumdeaths = rowSums(FluData[,8:13])
FluData[FluData$sumcases==max(FluData$sumcases),1]
FluData[FluData$sumdeaths==min(FluData$sumdeaths),1]
cbind(levels(FluData$Country),FluData$sumcases)
colSums(FluData[,2:7])
