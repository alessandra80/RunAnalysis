#setting wd to test directory cointaining "test" files
setwd("./run_analysis/UCI HAR Dataset/test")
#listing files in test directory
listTest <- list.files()
#reading text files in listTest and binding by column
testDF<-do.call("cbind", lapply(listTest, read.table))
#setting wd to train directory containing "train" files 
setwd("../train")
#listing files in train directory
listTrain <- list.files()
#reading train files in listTrain and binding by column
trainDF<-do.call("cbind", lapply(listTrain, read.table))
#binding by row the two DF
testTrain <- rbind(testDF, trainDF) 
#setting wd to UCI HAR Dataset directory
setwd("..")
#reading text file containing features names
featName <- read.table("features.txt")
#assigning columns name to the testTrain DF
colnames(testTrain) <- c("subject",as.character(featName[,2]), "activity")
#selecting the first and the last columns and those featuring mean and std values
dataSelect <- testTrain[,grep("subject|mean|std|activity", colnames(testTrain))]
#reading labels name inside activity_labels file
actLabels <- read.table("activity_labels.txt", colClasses = c(rep("NULL", 1), rep("character", 1)))
#creating a vector with the content of the activity column (number from 1 to 6 corresponding 
#to the six activities listed in the activity_labels.txt file)
numberLabels <- dataSelect[,"activity"] 
#replacing numbers with the name of the activities present in the actLabels vector
for(i in 1:6){
  numberLabels1 <-replace(numberLabels, numberLabels==i,actLabels[i,1])
  numberLabels <- numberLabels1
}
#replacing the numeric activity column in dataSelect with the character vector numberLabels
dataSelect <- replace(dataSelect, "activity", numberLabels)
#reading the file where there are the new variable names
descripName <- read.table("features_Names.txt")
#renaming the columns of the data frame 
colnames(dataSelect) <- c(as.character(descripName[,1]))
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
#writing a table to submit the tidy data set to coursera
write.table(summarized, file= "tidy_dataset.txt", row.name=FALSE)

setwd("~/")
