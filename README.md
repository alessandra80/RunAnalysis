# RunAnalysis
README file for the project of Getting and Cleaning data course.

To start to manipulate the data, the code sets the wd to the "test" directory present inside the "UCI HAR Dataset" directory. It lists the files within the directory using the list.files() function but keeping out the files within the "Inertial signals" directory by setting the pattern argument as "_". 
Indeed, following I will have to select only the measurement on the mean and standard deviation and these functions (mean() and std()) have not been applied to "inertials signals" so, in my opinion, we don't need the folders containing that data. 
So the code reads only the "x_test", "y_test" and the "subject_test" files that are inside the "test" directory. 
After, the code reads the files present in the list with the function read.table() and bind the resulting data frames by column thanks to the function cbind().
At this point I write a code to do the same with the files that are in the "train" directory.
The code first set the new wd being the "train" directory and after It applies the same functions that before.

Up to now the code produced two data frames: one with the "test" data (testDF) and another one with the "train" data (trainDF).
As they contain the same variables (subject, x vector and y in this order) the code binds them by row with the rbind() function and produce a data frame I named testTrain. 

At this point I wanted to give variable names to the testTrain columns.
I decided to give the name "subject" to the first column as it contains tha number assigned at each subject involved in the experiments, and "activity" to the last column as it contains the labels for the six activities done by each subject. 
For the columns between the first and the last (from 2 to 562), I used the feature names listed in the features.txt file.  
To do all that, the code set the wd to the main "UCI HAR Dataset" directory and by read.table() reads the features.txt file to have the names of columns from 2 to 562. 
To assign the column names to the Data Frame, the code uses a character vector cointaining "subject", the feature names and "activity".

Since I am interested only at the feature columns featuring the mean and standard deviation values, I select from my "column-named" testTrain, only the columns containing the word "mean" or "std" (plus the first "subject" column and the last "activity" column obviously). To do this, I subseted the Data frame testTrain using a grep() function. It takes only the column where there are the words of interest by checking the matching with the column names and save the new data frame as dataSelect.
I decided to extract only the columns with the word "mean" and not those with "Mean" since reading the features.info.txt file, I understood that in the case of "mean()" columns they contain the value of the mean calculated on the features, while the columns with "Mean" have the value of the angle() calculated to the average signals in a single window sample (named gravityMean for example). 
So, in my opinion column values of "mean" and "Mean" have different meaning and I have choses those with "mean" as they have "literally" the mean of some features.

To name the different activities in the "activity" column, represented by numeric labels from 1 to 6, the code reads the "activity_labels.txt" file and save the name of the labels in a vector. After, it assigns at each number in the "activity" column the corresponding name in the vector, by a for loop.  

At this point the code replaces the old "activity" column inside dataSelect with the new one where there are activity descriptive names. Following, it assigns new descriptive names to the columns from number 2 to number 80. For this purpose firstly the code creates a character vector (nmCo) with the column names of dataSelect, secondly it creates other two character vectors (vec, vec1) where it puts the part of the column names I would like to replace and the replacement string, respectively. Following by a for loop the code replaces part of the dataSelect variable names with the new parts I chose assigning the modified names to the vector nmCo.
At the end it sets the column names of dataSelect to be the character strings in nmCo.

Subsequently, it transforms the Data Frame in a Data Table by the function tbl_df() so it can apply dplyr and tidyr function on it.

As last steps, the code applies the arrange() and group_by() functions to the Data Table-Data frame arranging and grouping by the "subject" and "activity" columns. Eventually It summarize each column by calculating the average (mean()) of each variable for each activity and each subjects.  

