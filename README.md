# RunAnalysis
README file for the course project of Getting and Cleaning data.

To start to manipulate the data, I moved the directories "Inertial signals" present in "test" and "train" directories, to the "UCI HAR Dataset directory".
Indeed, following I will have to select only the measurement on the mean and standard deviation and these functions (mean() and std()) have not been applied to "inertials signals" so we don't need that folders. 
I want to read only the "x_test/x_train", "y_test/y_train" and the "subject_test/subject_train" files that are inside the "train" and "test" directories. 
So to commence, the code sets the wd to the "test" directory. It lists the files within the directory using the list.files() function.
After, the code reads the files present in the list with the function read.table() and bind the resulting data frames by column thanks to the function cbind().
At this point I write a code to do the same with the files that are in the "train" directory.
The code first set the new wd being the "train" directory and after It applies the same functions that before.

Up to now the code produced two data frames: one with the "test" data and another one with the "train" data.
As they contain the same variables (subject, x vector and y in this order) the code binds them by row with the rbind() function. 

At this point I wanted to give variable names to the columns of the new "row-bound" Data Frame.
I decided to give the name "subject" to the first column as it contains tha number assigned at each subject, and "activity" to the last column as it contains the labels for the six activities done by each subject. 
For the columns between the first and the last (from 2 to 362), I used the feature names listed in the features.txt file.  
To do all that, the code set the wd to the main "UCI HAR Dataset" directory and by read.table() reads the features.txt file to have the names of columns from 2 to 362. 
To assign the column names to the Data Frame, the code uses a character vector cointaining "subject", the feature names and "activity".

Since I am interested only at the feature columns featuring the mean and standard deviation values, I select from my "column-named" Data Frame, only the columns containing the word "mean" or "std" (plus the first "subject" column and the last "Activity" column obviously). To do this, I subseted the Data frame using a grep() function. It takes only the column where there are the words of interest by checking the matching with the column names.
I decided to extract only the columns with the word "mean" and not those with "Mean" since reading the features.info.txt file, I understood that in the case of "mean()" columns they contain the value of the mean calculated on the features, while the columns with "Mean" have the value of the angle() calculated to the average signals in a single window sample (named gravityMean for example). 
So, in my opinion column values of "mean" and "Mean" have different meaning and I choose the "mean" as they have "literally" the mean of some features.

To name the different activities in the "activity" column, represented by numeric labels from 1 to 6, the code reads the "activity_labels.txt" file and save the name of the labels in a vector. After, it assigns at each number in the "activity" column the corresponding name in the vector, by a for loop.  

At this point the code replace the old "activity" column with the new one where there are activity descriptive names.
Following, it assigns to the columns (from number 2 to number 80) descriptive variable names: it reads by read.table() a file named features.Names.txt where I put descriptive names for the features, it creates a vector and assigns it to the column names of the data frame.
Subsequently, it transforms the Data Frame in a Data Table by the function tbl_df() so it can apply dplyr and tidyr function on it.

As last steps, the code applies the arrange() and group_by() functions to the Data Table-Data frame arranging and grouping by the "subject" and "activity" columns. Eventually It summarize each column by calculating the average (mean()) of each variable.  

