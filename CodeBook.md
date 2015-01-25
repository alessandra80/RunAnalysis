Code Book

For the Coursera project we need to join together the files in the test and train folders and after to select only the columns representing the mean and the standard deviation (std) of the variables. So, I chose don't include in the joining process the Inertial Signals folders as they don't contain neither the mean nor the standard deviation for data that are inside them.  
Once the data joined, the columns of the resulting Data Frame have been renamed using descriptive names. For the column containing the number of the subjects involved in the experiments (n=30) the name was "subject", for the columns containin the data of the 561-feature vector, it has been used the names inside features.txt file and for the column in which there was the labels for the 6 activities performed by the subject, the name was "activity".

Following, only the columns featuring "mean" and "std" in the names have been selected and the number of the labels in the "activity" column have been replaced with the corresponding activities names (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS).

All the column names between "subject" and "activity" have been substituted with descriptive names that have been created modifing the column names that were been took from the features.txt file.

So, the renamed data frame has been transformed in a data table and the "subject" and "activity" columns arranged (this a personal choice. According to me the data table was tidier if the subject's numbers were in crescent order and the activities in alphabetic order).

At the end, the data has been grouped by the previous arranged "subject" and "activity" and summarized by calculating the mean of each variable.

So what we have at the end of the manipulation, is a tidy data table with 180 rows and 81 variables where there is the mean of each variables for each activity and each subject.

Here the new variable names and their meaning:

Variable 1. subject (int)

             Increasing numbers identifying the subjects (n=30) involved in the experiments. The range is from 1 to 30

Variable 2. activity (char)

             Descriptive names of the 6 activities performed by the 30 subjects involved in the experiments. They are              arranged in alphabetical order and grouped by the subject column:

	     LAYING
	     SITTING
	     STANDING
	     WALKING
	     WALKING_DOWNSTAIRS
	     WALKING_UPSTAIRS
	     
The following 79 variables represent the summarized mean() of the variables that are in the column names. For each variables names I provide the meaning.

As the original data were been normalised and bounded within [-1,1] the results from which we started to make the course project were unitlless. Consequently, also the new values of these 79 variables are unitlless.

However they are all of type numeric (num).


Variable 3. timeDomainBodyAccMeanXaxis

 	mean of the time domain body acceleration signal on the X axis coming from the mobile phone accelerometer (feature previously named tBodyAcc-mean()-X)   

Variable 4. timeDomainBodyAccMeanYaxis

	mean of the time domain body acceleration signal on the Y axis coming from the mobile phone accelerometer (feature previously named tBodyAcc-mean()-Y)

Variable 5. timeDomainBodyAccmeanZaxis

	mean of the time domain body acceleration signal on the Z axis coming from the mobile phone accelerometer (feature previously named tBodyAcc-mean()-Z)

Variable 6. timeDomainBodyAccStdXaxis

	std of the time domain body acceleration signal on the X axis coming from the mobile phone 	accelerometer (feature previously named tBodyAcc-std()-X)

Variable 7. timeDomainBodyAccStdYaxis
  
  std of the time domain body acceleration signal on the Y axis coming from the mobile phone accelerometer (feature previously named tBodyAcc-std()-Y)

Variable 8. timeDomainBodyAccStdZaxis

	std of the time domain body acceleration signal on the Z axis coming from the mobile phone accelerometer (feature previously named tBodyAcc-std()-Z)

Variable 9. timeDomainGravityAccMeanXaxis

	mean of the time domain gravity acceleration signal on the X axis coming from the mobile phone accelerometer (feature previously named tGravityAcc-mean()-X)

Variable 10. timeDomainGravityAccMeanYaxis

	mean of the time domain gravity acceleration signal on the Y axis coming from the mobile phone accelerometer (feature previously named tGravityAcc-mean()-Y)

Variable 11. timeDomainGravityAccMeanZaxis

	mean of the time domain gravity acceleration signal on the Z axis coming from the mobile phone accelerometer (feature previously named tGravityAcc-mean()-Z)

Variable 12. timeDomainGravityAccStdXaxis

	std of the time domain gravity acceleration signal on the X axis, coming from the mobile phone accelerometer (feature previously named tGravityAcc-std()-X)
      
Variable 13. timeDomainGravityAccStdYaxis

	std of the time domain gravity acceleration signal on the Y axis coming from the mobile phone accelerometer (feature previously named tGravityAcc-std()-Y)

Variable 14. timeDomainGravityAccStdZaxis
    
        std of the time domain gravity acceleration signal on the Z axis coming from the mobile phone accelerometer (feature previously named tGravityAcc-std()-Z)

Variable 15. timeDomainBodyAccJerkMeanXaxis

       mean of the derived in time (Jerk) body acceleration signal (time domain signal on the X axis) coming from the mobile phone accelerometer (feature previously named tBodyAccJerk-mean()-X)

Variable 16. timeDomainBodyAccJerkMeanYaxis

        mean of the derived in time (Jerk) body acceleration signal (time domain signal on the Y axis) coming from the mobile phone accelerometer (feature previously named tBodyAccJerk-mean()-Y)

Variable 17. timeDomainBodyAccJerkMeanZaxis

       mean of the derived in time (Jerk) body acceleration signal (time domain signal on the Z axis) coming from the mobile phone accelerometer (feature previously named  tBodyAccJerk-mean()-Z)

Variable 18. timeDomainBodyAccJerkstdXaxis

        std of the derived in time (Jerk) body acceleration signal (time domain signal on the X axis) coming from the mobile phone accelerometer (feature previously named  tBodyAccJerk-std()-X)

Variable 19. timeDomainBodyAccJerkStdYaxis

         std of the derived in time (Jerk) body acceleration signal (time domain signal on the Y axis) coming from the mobile phone accelerometer (feature previously named  tBodyAccJerk-std()-Y)

Variable 20. timeDomainBodyAccJerkStdZaxis

          std of the derived in time (Jerk) body acceleration signal (time domain signal on the Z axis) coming from the mobile phone accelerometer (feature previously named  tBodyAccJerk-std()-Z)
    
Variable 21. timeDomainBodyGyroMeanXaxis

          mean of the time domain angular velocity signal on the X axis coming from the mobile phone gyroscope (feature previously named tBodyGyro-mean()-X)

Variable 22. timeDomainBodyGyroMeanYaxis

          mean of the time domain angular velocity signal on the Y axis coming from the mobile phone gyroscope (feature previously named tBodyGyro-mean()-Y)

Variable 23. timeDomainBodyGyroMeanZaxis

         mean of the time domain angular velocity signal on the Z axis coming from the mobile phone gyroscope (feature previously named tBodyGyro-mean()-Z)

Variable 24. timeDomainBodyGyroStdXaxis

          std of the time domain angular velocity signal on the X axis coming from the mobile phone gyroscope (feature previously named tBodyGyro-std()-X)

Variable 25. timeDomainBodyGyrostdYaxis

          std of the time domain angular velocity signal on the Y axis coming from the mobile phone gyroscope (feature previously named tBodyGyro-std()-Y)

Vaiable 26. timeDomainBodyGyroStdZaxis

         std of the time domain angular velocity signal on the Z axis coming from the mobile phone gyroscope (feature previously named tBodyGyro-std()-Z)

Variable 27. timeDomainBodyGyroJerkMeanXaxis

          mean of the derived in time (TimeDerived) body angular velocity signal (time domain T signal on the X axis) coming from the mobile phone gyroscope (feature previously named tBodyGyroJerk-mean()-X)

Variable 28. timeDomainBodyGyroJerkMeanYaxis

          mean of the derived in time (Jerk) body angular velocity signal (time domain signal on the Y axis), coming from the mobile phone gyroscope (feature previously named tBodyGyroJerk-mean()-Y)

Variable 29. timeDomainBodyGyroJerkMeanZaxis

          mean of the derived in time (Jerk) body angular velocity signal (time domain signal on the Z axis) coming from the mobile phone gyroscope (feature previously named tBodyGyroJerk-mean()-Z)

Variable 30. timeDomainBodyGyroJerkStdXaxis

          std of the derived in time (Jerk) body angular velocity signal (time domain signal on the X axis) coming from the mobile phone gyroscope (feature previously named tBodyGyroJerk-std()-X)

Variable 31. timeDomainBodyGyroJerkStdYaxis

          std of the derived in time (Jerk) body angular velocity signal (time domain signal on the Y axis) coming from the mobile phone gyroscope (feature previously named tBodyGyroJerk-std()-Y)

Variable 32. timeDomainBodyGyroJerkStdZaxis

          std of the derived in time (Jerk) body angular velocity signal (time domain signal on the Z axis) coming from the mobile phone gyroscope (feature previously named tBodyGyroJerk-std()-Z)

Variable 33. timeDomainBodyAccMagMean

          mean of the magnitude of the time domain body acceleration signal coming from the mobile phone accelerometer (feature previously named tBodyAccMag-mean()) 

Variable 34. timeDomainBodyAccMagStd

         std of the magnitude of the time domain body acceleration signal coming from the mobile phone accelerometer (feature previously named tBodyAccMag-std()) 

Variable 35. timeDomainGravityAccMagMean

          mean of the magnitude of the time domain gravity acceleration signal coming from the mobile phone accelerometer (feature previously named tGravityAccMag-mean())

Variable 36. timeDomainGravityAccMagStd

         std of the magnitude of the time domain gravity acceleration signal coming from the mobile phone accelerometer (feature previously named tGravityAccMag-std())

Variable 37. timeDomainBodyAccJerkMagmean

        mean of the magnitude of the derived in time (Jerk) body acceleration signal (time domain signal) coming from the mobile phone accelerometer (feature previously named tBodyAccJerkMag-mean())

Variable 38. timeDomainBodyAccJerkMagStd

         std of the magnitude of the derived in time (Jerk) body acceleration signal (time domain signal) coming from the mobile phone accelerometer (feature previously named tBodyAccJerkMag-std())

Variable 39. timeDomainBodyGyroMagMean

         mean of the magnitude of the time domain angular velocity signal coming from the mobile phone gyroscope (feature previously named tBodyGyroMag-mean())

Variable 40. timeDomainBodyGyroMagStd

         std of the magnitude of the time domain angular velocity signal coming from the mobile phone gyroscope (feature previously named tBodyGyroMag-std())

Variable 41. timeDomainBodyGyroJerkMagMean

          mean of the magnitude of the derived in time (Jerk) body acceleration signal (time domain signal) coming from the mobile phone gyroscope (feature previously named tBodyGyroJerkMag-mean())

Variable 42. timeDomainBodyGyroJerkMagStd

           std of the magnitude of the derived in time (Jerk) body acceleration signal (time domain signal) coming from the mobile phone gyroscope (feature previously named tBodyGyroJerkMag-std())

Variable 43. frequencyDomainBodyAccMeanXaxis

          mean of the frequency domain body acceleration signal on the X axis coming from the mobile phone accelerometer (feature previously named fBodyAcc-mean()-X) 

Variable 44. frequencyDomainBodyAccMeanYaxis

         mean of the frequency domain body acceleration signal on the Y axis, coming from the mobile phone accelerometer (feature previously named fBodyAcc-mean()-Y) 

Variable 45. frequencyDomainBodyAccMeanZaxis

        mean of the frequency domain body acceleration signal on the Z axis coming from the mobile phone accelerometer (feature previously named fBodyAcc-mean()-Z) 

Variable 46. frequencyDomainBodyAccStdXaxis

       std of the frequency domain body acceleration signal on the X axis coming from the mobile phone accelerometer (feature previously named fBodyAcc-std()-X) 

Variable 47. frequencyDomainBodyAccStdYaxis

        std of the frequency domain body acceleration signal on the Y axis coming from the mobile phone accelerometer (feature previously named fBodyAcc-std()-Y)

Variable 48. frequencyDomainBodyAccStdZaxis

         std of the frequency domain body acceleration signal on the Z axis coming from the mobile phone accelerometer (feature previously named fBodyAcc-std()-Z) 

Variable 49. frequencyDomainBodyAccMeanFreqXaxis

         mean of the frequency component of the frequency domain body acceleration signal on the X axis coming from the mobile phone accelerometer (feature previously named fBodyAcc-meanFreq()-X)

Variable 50. frequencyDomainBodyAccMeanFreqYaxis

         mean of the frequency component of the frequency domain body acceleration signal on the Y axis coming from the mobile phone accelerometer (feature previously named fBodyAcc-meanFreq()-Y)

Variable 51. frequencyDomainBodyAccMeanFreqZaxis

        mean of the frequency component of the frequency domain body acceleration signal on the Z axis coming from the mobile phone accelerometer (feature previously named fBodyAcc-meanFreq()-Z)

Variable 52. frequencyDomainBodyAccJerkMeanXaxis

         mean of the Fast Fourier Transform (Jerk) of the frequency domain body acceleration signal on the X axis coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-mean()-X)

Variable 53. frequencyDomainBodyAccJerkMeanYaxis

        mean of the Fast Fourier Transform (Jerk) of the frequency domain body acceleration signal on the Y axis coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-mean()-Y)

Variable 54. frequencyDomainBodyAccJerkMeanZaxis

         mean of the Fast Fourier Transform (Jerk) of the frequency domain body acceleration signal on the Z axis coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-mean()-Z)
         
Variable 55. frequencyDomainBodyAccJerkStdXaxis

         std of the Fast Fourier Transform (Jerk) of the frequency domain body acceleration signal on the X axis, coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-std()-X)

Variable 56. frequencyDomainBodyAccJerkStdYaxis

        std of the Fast Fourier Transform (Jerk) of the frequency domain body acceleration signal on the Y axis coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-std()-Y)

Variable 57. frequencyDomainBodyAccJerkStdZaxis

        std of the Fast Fourier Transform (Jerk) of the frequency domain body acceleration signal on the Z axis coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-std()-Z)

Variable 58. frequencyDomainBodyAccJerkMeanFreqXaxis 

         mean of the frequency component of the Fast Fourier Transform (Jerk) of the frequency domain body acceleration signal on the X axis coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-meanFreq()-X)

Variable 59. frequencyDomainBodyAccJerkMeanFreqYaxis

        mean of the frequency component of the Fast Fourier Transform (Jerk) of the frequency domain body acceleration signal on the Y axis coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-meanFreq()-Y)

Variable 60. frequencyDomainBodyAccJerkMeanFreqZaxis

         mean of the frequency component of the Fast Fourier Transform (Jerk) of the frequency domain body acceleration signal on the Z axis coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-meanFreq()-Z)

Variable 61. frequencyDomainBodyGyroMeanXaxis

         mean of the frequency domain angular velocity signal on the X axis coming from the mobile phone gyroscope (feature previously named fBodyGyro-mean()-X)

Variable 62. frequencyDomainBodyGyroMeanYaxis

         mean of the frequency domain angular velocity signal on the Y axis coming from the mobile phone gyroscope (feature previously named fBodyGyro-mean()-Y)

Variable 63. frequencyDomainBodyGyroMeanZaxis

        mean of the frequency domain angular velocity signal on the Z axis coming from the mobile phone gyroscope (feature previously named fBodyGyro-mean()-Z)

Variable 64. frequencyDomainBodyGyroStdXaxis

         std of the frequency domain angular velocity signal on the X axis coming from the mobile phone gyroscope (feature previously named fBodyGyro-std()-X)

Variable 65. frequencyDomainBodyGyroStdYaxis

          std of the frequency domain angular velocity signal on the Y axis coming from the mobile phone gyroscope (feature previously named fBodyGyro-std()-Y)

Variable 66. frequencyDomainBodyGyroStdZaxis

         std of the frequency domain angular velocity signal on the Z axis coming from the mobile phone gyroscope (feature previously named fBodyGyro-std()-Z)

Variable 67. frequencyDomainBodyGyroMeanFreqXaxis

         mean of the frequency component of the frequency domain angular velocity signal on the X axis coming from the mobile phone gyroscope (feature previously named fBodyGyro-meanFreq()-X)

Variable 68. frequencyDomainBodyGyroMeanFreqYaxis

          mean of the frequency component of the frequency domain angular velocity signal on the Y axis coming from the mobile phone gyroscope (feature previously named fBodyGyro-meanFreq()-Y)

Variable 69. frequencyDomainBodyGyroMeanFreqZaxis

          mean of the frequency component of the frequency domain angular velocity signal on the Z axis coming from the mobile phone gyroscope (feature previously named fBodyGyro-meanFreq()-Z)

Variable 70. frequencyDomainBodyAccMagMean
 
          mean of the magnitude of the frequency domain body acceleration signal coming from the mobile phone accelerometer (feature previously named fBodyAccMag-mean())

Variable 71. frequencyDomainBodyAccMagStd

         std of the magnitude of the frequency domain body acceleration signal coming from the mobile phone accelerometer (feature previously named fBodyAccMag-std())

Variable 72. frequencyDomainBodyAccMagMeanFreq

         mean of the frequency component of the frequency domain body acceleration signal coming from the mobile phone accelerometer (feature previously named fBodyAccMag-meanFreq())

Variable 73. frequencyDomainBodyBodyAccJerkMagMean

         mean of the Fast Fourier Transform of the frequency domain body body acceleration signal coming from the mobile phone accelerometer (feature previously named fBodyBodyAccJerkMag-mean())

Variable 74. frequencyDomainBodyBodyAccJerkMagStd

          std of the Fast Fourier Transform of the frequency domain body body acceleration signal coming from the mobile phone accelerometer (feature previously named fBodyBodyAccJerkMag-std())

Variable 75. frequencyDomainBodyBodyAccJerkMagMeanFreq

         mean of the frequency component of the Fast Fourier Transform of the magnitude of the frequency domain body body acceleration signal coming from the mobile phone accelerometer (feature previously named fBodyBodyAccJerkMag-meanFreq())

Variable 76. frequencyDomainBodyBodyGyroMagMean

       mean of the magnitude of the frequency domain body body angular velocity coming from the mobile phone gyroscope (feature previously named fBodyBodyGyroMag-mean())

Variable77. frequencyDomainBodyBodyGyroMagStd

        std of the magnitude of the frequency domain body body angular velocity signal coming from the mobile phone gyroscope (feature previously named fBodyBodyGyroMag-std())

Variable 78. frequencyDomainBodyBodyGyroMagMeanFreq

          mean of the frequency component of the magnitude of the frequency domain body body angular velocity signal coming from the mobile phone gyroscope (feature previously named fBodyBodyGyroMag-meanFreq())

Variable 79. frequencyDomainBodyBodyGyroJerkMagMean
 
          mean of the Fast Fourier Transform (Jerk) of the magnitude of the frequency domain body body angular velocity signal coming from the mobile phone gyroscope (feature previously named fBodyBodyGyroJerkMag-mean())
         
Variable 80. frequencyDomainBodyBodyGyroJerkMagStd 

          std of the Fast Fourier Transform (Jerk) of the magnitude of the frequency domain body body angular velocity signal coming from the mobile phone gyroscope (feature previously named fBodyBodyGyroJerkMag-std())

Variable 81. frequencyDomainBodyBodyGyroJerkMagMeanFreq

           mean of the frequency component of the Fast Fourier Transform (Jerk) of the magnitude of the frequency domain body body angular velocity signal coming from the mobile phone gyroscope (feature previously named fBodyBodyGyroJerkMag-meanFreq())
