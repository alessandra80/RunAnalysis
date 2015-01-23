#setting wd to directory cointaining test working files
setwd("./Data_science/Getting_Cleaning/UCI HAR Dataset/test")
#listing files in test directory
listTest <- list.files()
#reading text files in listTest and binding by column
testDF<-do.call("cbind", lapply(listTest, read.table))
setwd("../train")
#listing files in train directory
listTrain <- list.files()
#reading train files in listTrain and binding by column
trainDF<-do.call("cbind", lapply(listTrain, read.table))
#binding by row the two DF
testTrain <- rbind(testDF, trainDF) 
setwd("..")
#reading text file containing features names
featName <- read.table("features.txt")
#assigning columns name  
colnames(testTrain) <- c("subject",as.character(featName[,2]), "activity")
#selecting the first and the last columns and those featuring mean and std values
dataSelect <- testTrain[,grep("Subject|mean|std|Activity", colnames(testTrain))]
#reading labels name inside activity_labels file
actLabels <- read.table("activity_labels.txt", colClasses = c(rep("NULL", 1), rep("character", 1)))
#creating a vector with the content of the Activity column (number from 1 to 6 corresponding to the six activity )
numberLabels <- dataSelect[,"Activity"] 
#replacing numbers inside numberLabels with the name of the activities present in the actLabels vector
for(i in 1:6){
  numberLabels1 <-replace(numberLabels, numberLabels==i,actLabels[i,1])
  numberLabels <- numberLabels1
}
#replacing the numeric Activity column in dataSelect with the character vector numberLabels
dataSelect <- replace(dataSelect, "Activity", numberLabels)
#renaming the columns
descripName <- read.table("features_Names.txt")
colnames(dataSelect) <- c(as.character(descripName[,1]))
library(data.table)
library(tidyr)
library(dplyr)
#trasforming dataSelect in a data table
DTdf <- tbl_df(dataSelect)
library(plyr)
arranged <- arrange(DTdf, Subject, Activity)
grouped <- group_by(arranged, Subject, Activity)
summarized <- summarise_each(grouped, funs(mean))
