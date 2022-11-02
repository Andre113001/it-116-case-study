install.packages("ggplot2")
library(dplyr)
library(ggplot2)

setwd("C:/Users/1130m/Desktop/IT 116 Case Study")

getCsv = read.csv("Albay_Department_of_Agrarian Reform_2018-2019.csv")

sample <- data.frame(getCsv$Procurement.Mode)
sample <- unique(sample$getCsv.Procurement.Mode)
sample['sum'] <- 

getCaseData <- getCsv[, c(19, 5, 14, 23)]

removeNull <- getCaseData[grep("NULL", getCaseData$Item.Name, invert = TRUE),]

p1 <- removeNull[order(removeNull$Approved.Budget.of.the.Contract),]

p1$Approved.Budget.of.the.Contract <- as.numeric(gsub(",","", p1$Approved.Budget.of.the.Contract))
p1$Item.Budget <- as.numeric(gsub(",","", p1$Item.Budget))

top20 <- p1[1:20,]

top20 <- top20[order(top20$Approved.Budget.of.the.Contract),]

ggplot(top20) + geom_col(aes(top20$Item.Name, top20$Approved.Budget.of.the.Contract), fill="BLUE", width = 0.6)