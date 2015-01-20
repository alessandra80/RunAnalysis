# RunAnalysis
Repo for the course project of Getting and Cleaning data

To start I moved the directories "Inertial signals" present in "test" and "train" directories, to the "UCI HAR Dataset directory".
Indeed, I want to read only the "x_test/x_train", "y_test/y_train" and the "subject_test/subject_train" files that are inside the "train" and "test" directories and I don't want to read the "Inertial signals" directories. 
So to commence, the code sets the wd to the "test" directory. It lists the files within the directory using the list.files() function.

After, the code reads the files present in the list with the function read.table() and bind the resulting data frames by column thanks to the function cbind().
At this point I write a code to do the same with the files that are in the "train" directory.
The code first set the new wd being the "train" directory and after It applies the same function than before.

Up to now the code produced two data frames: one with the "test" data and another one with the "train" data.
As they contain the same variables (subject, x vector and y in this order) the code binds them by row with the rbind function. 

At this point I wanted to give variable names to that new "row-bound" Data Frame.
I decided to give the name "Subject" to the first column as it contains tha number assigned at each subject, and "Activity" to the last column as it contains the labels for the six activities done by the subjects. For the columns between the first and the last (from 2 to 362), I used the feature names listed in the features.txt file.  
To do all that, the code set the wd to the main "UCI HAR Dataset" directory and by read.table() reads the features file to have the names of columns from 2 to 362. 
To assign the column names to the Data Frame, the code uses a character vector cointaining "Subject", the feature names and "Activity".

Since I am interested only at the feature columns featuring the mean and standard deviation values, I select from my renamed Data Frame, only the columns containing the word "mean" or "std" (plus the first and the last coumns obviously). to do this, I subseted the Data frame using a grep() function. It takes only the column where there are the two words of interest by checking the matching with the column names.

colnames(testTrain) <- c("SubjectNames",as.character(featName[,2]), "Activity")
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
library(data.table)
library(tidyr)
library(dplyr)
#trasforming dataSelect in a data table
DTdf <- tbl_df(dataSelect)
#selecting columns with mean
DTmean <- DTdf[,grep("Subject|mean|Activity", colnames(DTdf))]
#selecting columns with std
DTstd <- DTdf[,grep("Subject|std|Activity", colnames(DTdf))]
#reading the text file where I put descriptive names for DTmean variables
variablesMean <- read.table("features_mean.txt")
#reading the text file where I put descriptive names for DTstd variables
variablesStd <- read.table("features_std.txt")
#creating a vector with descriptive names present in variablesMean
vect <- as.character(variablesMean[,1])
#creating a vector with descriptive names present in variablesStd
vect1 <- as.character(variablesStd[,1])
#assigning descriptive names to DTmean and DTstd
names(DTmean) <- vect
names(DTstd)  <- vect1
#gathering columns from DTmean and DTstd 
DTmean2 <- gather(DTmean, feature_funct, Mean, -(SubjectNumber), -(Activity))
DTstd2 <- gather(DTstd, feature_funct, Std, -(SubjectNumber), -(Activity))
#separate feature_funct columns from DTmean2 and DTstd2 in 2 new variables
DTmeanTidy <- separate(DTmean2, feature_funct, into = c("Feature", "Axis"))
DTstdTidy <- separate(DTstd2, feature_funct, into = c("Feature", "Axis"))
library(plyr)
DTlist <- list(DTmeanTidy, DTstdTidy)
joined <- join_all(DTlist)
