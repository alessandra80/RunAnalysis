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

To name the different activities in the "Activity" column, represented by numeric labels from 1 to 6, the code reads the "activity_labels.txt" file and save the name of the labels in a vector. After, it assigns at each number in the "Activity" column the corresponding name in the vector by a for loop.  

At this point the code replace the old "Activity" column with the new where there are activity descriptive names.
It transforms the Data Frame in a Data Table by the function tbl_df() so it can apply dplyr and tidyr function on it.
I decided to break this Data Table into two Data Tables by the presence of "mean" and "std" in variable names using grep() function. 

Following, I renamed the columns included between the first (Subject) and last column (Activity) in both data Tables with longer but more descriptive names. To do this I wrote two text files featuring the new names, I read them by read.table() and I assigned the name they cointained at the columns of "mean" and "std" Data Tables. 
On example of the new column names is: TimeDomainBodyAcceleration_X
In my opinion we can consider we have two variables in one column: "TimeDomainBodyAcceleration" which we could name "Feature" and "X" which we could evaluate as an axis variables and we could name "Axis".
So, I write a code to gather() all columns in the two Data Tables except "Activity" and "Subject" creating a key column named "feature_funct" and a value column named "Mean" or "Std" (depending on the Data able). After I separated the "feature_funct" column in two new columns named "Feature" and "Axis".
#separate feature_funct columns from DTmean2 and DTstd2 in 2 new variables

library(plyr)
DTlist <- list(DTmeanTidy, DTstdTidy)
joined <- join_all(DTlist)
