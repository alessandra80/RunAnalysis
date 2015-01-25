#setting wd to "test" directory inside UCI HAR Dataset directory
setwd("UCI HAR Dataset/test")
#listing files in test directory
listTest <- list.files(pattern ="_")
#reading text files in listTest and binding by column
testDF<-do.call("cbind", lapply(listTest, read.table))
#setting wd to "train" directory
setwd("../train")
#listing files in train directory
listTrain <- list.files(pattern = "_")
#reading train files in listTrain and binding by column
trainDF<-do.call("cbind", lapply(listTrain, read.table))
#binding by row the two DF
testTrain <- rbind(testDF, trainDF) 
#setting wd to UCI HAR Dataset directory
setwd("..")
#reading text file containing features names
featName <- read.table("features.txt")
#assigning column names to testTrain DF 
colnames(testTrain) <- c("subject",as.character(featName[,2]), "activity")
#selecting the first and the last columns and those featuring mean and std values
dataSelect <- testTrain[,grep("subject|mean|std|activity", colnames(testTrain))]
#reading labels name inside activity_labels file
actLabels <- read.table("activity_labels.txt", colClasses = c(rep("NULL", 1), rep("character", 1)))
#creating a vector with the content of the activity column (number from 1 to 6 corresponding to the six activity labels)
numberLabels <- dataSelect[,"activity"] 
#replacing numbers inside numberLabels with the name of the activities present in the actLabels vector
for(i in 1:6){
  numberLabels1 <-replace(numberLabels, numberLabels==i,actLabels[i,1])
  numberLabels <- numberLabels1
}
#replacing the numeric activity column in dataSelect with the character vector numberLabels
dataSelect <- replace(dataSelect, "activity", numberLabels)
#creating a character vector with the column names of dataSelect
nmCo <- names(dataSelect)
#creating two character vectors: the first containing column names parts in dataSelect I would like
#to replace and the second the replacing strings
vec <- c("-mean()", "-std()", "-X", "-Y", "-Z", "-meanFreq()", "tBo", "fBo", "tGr", "fGr")
vec1 <- c("Mean", "Std", "Xaxis", "Yaxis", "Zaxis", "meanFreq", "timeDomainBo", "frequencyDomainBo", "timeDomainGr", "frequencyDomainGr")
#replacing in nmCo the parts corresponding to the the strings of vec with the strings in vec1
for(i in 1:10){
nmCo1 <- gsub(vec[i], vec1[i], nmCo, fixed = TRUE)
nmCo <- nmCo1}
#assigning the new names in nmCo to the columns in dataSelect
colnames(dataSelect) <- nmCo
library(data.table)
library(tidyr)
library(dplyr)
#trasforming dataSelect in a data table
DTdf <- tbl_df(dataSelect)
library(plyr)
#arranging the subject and activity columns of the data table 
arranged <- arrange(DTdf, subject, activity)
#grouping the data table by the arranged subject and activity columns
grouped <- group_by(arranged, subject, activity)
#summarizing the value of the variables to a single mean() value calculated
#for each subject and each activity
summarized <- summarise_each(grouped, funs(mean))
#setting wd to the initial wd
setwd("..")
