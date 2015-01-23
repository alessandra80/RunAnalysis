Code Book

For the Coursera project we need to join together the files in the test and train folders and after to select only the columns representing the mean and the standard deviation (std) of the variables. So, I choose don't include in the joining process the Inertial Signals folders as they don't contain neither the mean nor the standard deviation for those Signals.  
Once the data joined, the columns of the resulting Data Frame have been renamed using descriptive names. For the column containing the number of the subjects involved in the experiments (n=30) the name was "subject", for the columns containin the data of the 561-feature vector, it has been used the names inside features.txt file and for the column in which there was the labels for the 6 activities performed by the subject, the name was "activity".

Following, only the columns featuring "mean" and "std" in the names have been selected and the number of the labels in the "activity" column have been replaced with the activities names (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS).

All the column names between "subject" and "activity" have been substituted with descriptive names that were in a text file created by myself.

Tha data frame has been transformed in a data table and the "subject" and "activity" columns arranged (this a personal choice. According to me the data table was tidier if the subject's numbers were in crescent order and the activities in alphabetic order).

At the end, the data has been grouped by the previous arranged "subject" and "activity" and summarized by calculating the mean of each variable.

So what we have at the end of the manipulation, is a tidy data table with 180 rows and 81 variables.

Here the new variable names and their meaning:

Variable 1. subject (int)

             Increasing numbers identifying the subjects (n=30) involved in the experiments. The range is from 1 to 30

Variable 2. activity 

             Descriptive names of the 6 activities performed by the 30 subjects involved in the experiments. They are              arranged in alphabetical order and grouped by the subject column:

	     LAYING
	     SITTING
	     STANDING
	     WALKING
	     WALKING_DOWNSTAIRS
	     WALKING_UPSTAIRS
	     
The following 79 variables represent the mean() of the mean or standard deviation (std()) values of some features that have been originally selected for the experiments.

As the original data were been normalised and bounded within [-1,1] the results from which we started to make the course project were unitlless. Consequently, also the new values of the variables are unitlless.


Variable 3. meanXaxisTBodyAcceleration

 	mean of the time (T in the name) domain body acceleration signal on the X axis, coming from the mobile phone accelerometer (feature previously named tBodyAcc-mean()-X)   

Variable 4. meanYaxisTBodyAcceleration

	mean of the time (T in the name) domain body acceleration signal on the Y axis, coming from the mobile phone accelerometer (feature previously named tBodyAcc-mean()-Y)

Variable 5. meanZaxisTBodyAcceleration

	mean of the time (T in the name) domain body acceleration signal on the Z axis, coming from the mobile phone accelerometer (feature previously named tBodyAcc-mean()-Z)

Variable 6. stdXaxisTBodyAcceleration

	std of the time (T in the name) domain body acceleration signal on the X axis, coming from the mobile phone 	accelerometer (feature previously named tBodyAcc-std()-X)

Variable 7. stdYaxisTBodyAcceleration
  
  std of the time (T in the name) domain body acceleration signal on the Y axis, coming from the mobile phone accelerometer (feature previously named tBodyAcc-std()-Y)

Variable 8. stdZaxisTBodyAcceleration

	std of the time (T in the name) domain body acceleration signal on the Z axis, coming from the mobile phone accelerometer (feature previously named tBodyAcc-std()-Z)

Variable 9. meanXaxisTGravityAcceleration

	mean of the time (T in the name) domain gravity acceleration signal on the X axis, coming from the mobile phone accelerometer (feature previously named tGravityAcc-mean()-X)

Variable 10. meanYaxisTGravityAcceleration

	mean of the time (T in the name) domain gravity acceleration signal on the Y axis, coming from the mobile phone accelerometer (feature previously named tGravityAcc-mean()-Y)

Variable 11. meanZaxisTGravityAcceleration

	mean of the time (T in the name) domain gravity acceleration signal on the Z axis, coming from the mobile phone accelerometer (feature previously named tGravityAcc-mean()-Z)

Variable 12. stdXaxisTGravityAcceleration

	std of the time (T in the name) domain gravity acceleration signal on the X axis, coming from the mobile phone accelerometer (feature previously named tGravityAcc-std()-X)
      
Variable 13. stdYaxisTGravityAcceleration

	std of the time (T in the name) domain gravity acceleration signal on the Y axis, coming from the mobile phone accelerometer (feature previously named tGravityAcc-std()-Y)

Variable 14. stdZaxisTGravityAcceleration
    
        std of the time (T in the name) domain gravity acceleration signal on the Z axis, coming from the mobile phone accelerometer (feature previously named tGravityAcc-std()-Z)

Variable 15. meanXaxisTimeDerivedTBodyAcceleration

       mean of the derived in time (TimeDerived) body acceleration signal (time domain T signal on the X axis), coming from the mobile phone accelerometer (feature previously named tBodyAccJerk-mean()-X)

Variable 16. meanYaxisTimeDerivedTBodyAcceleration

        mean of the derived in time (TimeDerived) body acceleration signal (time domain T signal on the Y axis), coming from the mobile phone accelerometer (feature previously named tBodyAccJerk-mean()-Y)

Variable 17. meanZaxisTimeDerivedTBodyAcceleration

       mean of the derived in time (TimeDerived) body acceleration signal (time domain T signal on the Z axis), coming from the mobile phone accelerometer (feature previously named  tBodyAccJerk-mean()-Z)

Variable 18. stdXaxisTimeDerivedTBodyAcceleration

        std of the derived in time (TimeDerived) body acceleration signal (time domain T signal on the X axis), coming from the mobile phone accelerometer (feature previously named  tBodyAccJerk-std()-X)

Variable 19. stdYaxisTimeDerivedTBodyAcceleration

         std of the derived in time (TimeDerived) body acceleration signal (time domain T signal on the Y axis), coming from the mobile phone accelerometer (feature previously named  tBodyAccJerk-std()-Y)

Variable 20. stdZaxisTimeDerivedTBodyAcceleration

          std of the derived in time (TimeDerived) body acceleration signal (time domain T signal on the Z axis), coming from the mobile phone accelerometer (feature previously named  tBodyAccJerk-std()-Z)
    
Variable 21. meanXaxisTBodyAngularVelocity

          mean of the time (T in the name) domain angular velocity signal on the X axis, coming from the mobile phone gyroscope (feature previously named tBodyGyro-mean()-X)

Variable 22. meanXaxisTBodyAngularVelocity

          mean of the time (T in the name) domain angular velocity signal on the Y axis, coming from the mobile phone gyroscope (feature previously named tBodyGyro-mean()-Y)

Variable 23. meanZaxisTBodyAngularVelocity

         mean of the time (T in the name) domain angular velocity signal on the Z axis, coming from the mobile phone gyroscope (feature previously named tBodyGyro-mean()-Z)

Variable 24. stdXaxisTBodyAngularVelocity

          std of the time (T in the name) domain angular velocity signal on the X axis, coming from the mobile phone gyroscope (feature previously named tBodyGyro-std()-X)

Variable 25. stdYaxisTBodyAngularVelocity

          std of the time (T in the name) domain angular velocity signal on the Y axis, coming from the mobile phone gyroscope (feature previously named tBodyGyro-std()-Y)

Vaiable 26. stdZaxisTBodyAngularVelocity

         std of the time (T in the name) domain angular velocity signal on the Z axis, coming from the mobile phone gyroscope (feature previously named tBodyGyro-std()-Z)

Variable 27. meanXaxisTimeDerivedTBodyAngularVelocity

          mean of the derived in time (TimeDerived) body angular velocity signal (time domain T signal on the X axis), coming from the mobile phone gyroscope (feature previously named tBodyGyroJerk-mean()-X)

Variable 28. meanYaxisTimeDerivedTBodyAngularVelocity

          mean of the derived in time (TimeDerived) body angular velocity signal (time domain T signal on the Y axis), coming from the mobile phone gyroscope (feature previously named tBodyGyroJerk-mean()-Y)

Variable 29. meanZaxisTimeDerivedTBodyAngularVelocity

          mean of the derived in time (TimeDerived) body angular velocity signal (time domain T signal on the Z axis), coming from the mobile phone gyroscope (feature previously named tBodyGyroJerk-mean()-Z)

Variable 30. stdXaxisTimeDerivedTBodyAngularVelocity

          std of the derived in time (TimeDerived) body angular velocity signal (time domain T signal on the X axis), coming from the mobile phone gyroscope (feature previously named tBodyGyroJerk-std()-X)

Variable 31. stdYaxisTimeDerivedTBodyAngularVelocity

          std of the derived in time (TimeDerived) body angular velocity signal (time domain T signal on the Y axis), coming from the mobile phone gyroscope (feature previously named tBodyGyroJerk-std()-Y)

Variable 32. stdZaxisTimeDerivedTBodyAngularVelocity

          std of the derived in time (TimeDerived) body angular velocity signal (time domain T signal on the Z axis), coming from the mobile phone gyroscope (feature previously named tBodyGyroJerk-std()-Z)

Variable 33. meanTBodyAccelerationMagn

          mean of the magnitude of the time (T in the name) domain body acceleration signal, coming from the mobile phone accelerometer (feature previously named tBodyAccMag-mean()) 

Variable 34. stdTBodyAccelerationMagn

         std of the magnitude of the time (T in the name) domain body acceleration signal, coming from the mobile phone accelerometer (feature previously named tBodyAccMag-std()) 

Variable 35. meanTGravityAccelerationMagn

          mean of the magnitude of the time (T in the name) domain gravity acceleration signal coming from the mobile phone accelerometer (feature previously named tGravityAccMag-mean())

Variable 36. stdTGravityAccelerationMagn

         std of the magnitude of the time (T in the name) domain gravity acceleration signal coming from the mobile phone accelerometer (feature previously named tGravityAccMag-std())

Variable 37. meanTimeDerivedTBodyAccelerationMagn

        mean of the derived in time (TimeDerived) magnitude of the body acceleration signal (time domain T signal), coming from the mobile phone accelerometer (feature previously named tBodyAccJerkMag-mean())

Variable 38. stdTimeDerivedBodyAccelerationMagn

         std of the derived in time (TimeDerived) magnitude of the body acceleration signal (time domain T signal), coming from the mobile phone accelerometer (feature previously named tBodyAccJerkMag-std())

Variable 39. meanTBodyAngularVelocityMagn

         mean of the magnitude of the time (T in the name) domain angular velocity signal coming from the mobile phone gyroscope (feature previously named tBodyGyroMag-mean())

Variable 40. stdTBodyAngularVelocityMagn

         std of the magnitude of the time (T in the name) domain angular velocity signal coming from the mobile phone gyroscope (feature previously named tBodyGyroMag-std())

Variable 41. meanTimeDerivedTBodyAngularVelocityMagn

          mean of the magnitude of the derived in time (TimeDerived) body acceleration signal (time domain T signal), coming from the mobile phone gyroscope (feature previously named tBodyGyroJerkMag-mean())

Variable 42. stdTimeDerivedTBodyAngularVelocityMagn

           std of the magnitude of the derived in time (TimeDerived) body acceleration signal (time domain T signal), coming from the mobile phone gyroscope (feature previously named tBodyGyroJerkMag-std())

Variable 43. meanXaxisFBodyAcceleration

          mean of the frequency (F in the name) domain body acceleration signal on the X axis, coming from the mobile phone accelerometer (feature previously named fBodyAcc-mean()-X) 

Variable 44. meanYaxisFBodyAcceleration

         mean of the frequency (F in the name) domain body acceleration signal on the Y axis, coming from the mobile phone accelerometer (feature previously named fBodyAcc-mean()-Y) 

Variable 45. meanZaxisFBodyAcceleration

        mean of the frequency (F in the name) domain body acceleration signal on the Z axis, coming from the mobile phone accelerometer (feature previously named fBodyAcc-mean()-Z) 

Variable 46. stdXaxisFDomainBodyAcceleration

       std of the frequency (F in the name) domain body acceleration signal on the X axis, coming from the mobile phone accelerometer (feature previously named fBodyAcc-std()-X) 

Variable 47. stdYaxisFDomainBodyAcceleration

        std of the frequency (F in the name) domain body acceleration signal on the Y axis, coming from the mobile phone accelerometer (feature previously named fBodyAcc-std()-Y)

Variable 48. stdZaxisFDomainBodyAcceleration

         std of the frequency (F in the name) domain body acceleration signal on the Z axis, coming from the mobile phone accelerometer (feature previously named fBodyAcc-std()-Z) 

Variable 49. meanXaxisFBodyAccelerationFrComponent

         mean of the frequency component of the frequency (F in the name) domain body acceleration signal on the X axis, coming from the mobile phone accelerometer (feature previously named fBodyAcc-meanFreq()-X)

Variable 50. meanYaxisFBodyAccelerationFrComponent

         mean of the frequency component of the frequency (F in the name) domain body acceleration signal on the Y axis, coming from the mobile phone accelerometer (feature previously named fBodyAcc-meanFreq()-Y)

Variable 51. meanZaxisFBodyAccelerationFrComponent

        mean of the frequency component of the frequency (F in the name) domain body acceleration signal on the Z axis, coming from the mobile phone accelerometer (feature previously named fBodyAcc-meanFreq()-Z)

Variable 52. meanXaxisFourierFBodyAcceleration

         mean of the Fast Fourier Transform of the frequency (F in the name) domain body acceleration signal on the X axis, coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-mean()-X)

Variable 53. meanYaxisFourierFBodyAcceleration

        mean of the Fast Fourier Transform of the frequency (F in the name) domain body acceleration signal on the Y axis, coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-mean()-Y)

Variable 54. meanZaxisFourierFBodyAcceleration

         mean of the Fast Fourier Transform of the frequency (F in the name) domain body acceleration signal on the Z axis, coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-mean()-Z)

Variable 55. stdXaxisFourierFBodyAcceleration

         std of the Fast Fourier Transform of the frequency (F in the name) domain body acceleration signal on the X axis, coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-std()-X)

Variable 56. stdYaxisFourierFBodyAcceleration

        std of the Fast Fourier Transform of the frequency (F in the name) domain body acceleration signal on the Y axis, coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-std()-Y)

Variable 57. stdZaxisFourierFBodyAcceleration

        std of the Fast Fourier Transform of the frequency (F in the name) domain body acceleration signal on the Z axis, coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-std()-Z)

Variable 58. meanXaxisFourierFBodyAccelerationFrComponent 

         mean of the frequency component of the Fast Fourier Transform of the frequency (F in the name) domain body acceleration signal on the X axis, coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-meanFreq()-X)

Variable 59. meanYaxisFourierFBodyAccelerationFrComponent

        mean of the frequency component of the Fast Fourier Transform of the frequency (F in the name) domain body acceleration signal on the Y axis, coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-meanFreq()-Y)

Variable 60. meanZaxisFourierFBodyAccelerationFrComponent

         mean of the frequency component of the Fast Fourier Transform of the frequency (F in the name) domain body acceleration signal on the Z axis, coming from the mobile phone accelerometer (feature previously named fBodyAccJerk-meanFreq()-Z)

Variable 61. meanXaxisFBodyAngularVelocity

         mean of the frequency (F in the name) domain angular velocity signal on the X axis, coming from the mobile phone gyroscope (feature previously named fBodyGyro-mean()-X)

Variable 62. meanYaxisFBodyAngularVelocity

         mean of the frequency (F in the name) domain angular velocity signal on the Y axis, coming from the mobile phone gyroscope (feature previously named fBodyGyro-mean()-Y)

Variable 63. meanZaxisFBodyAngularVelocity

        mean of the frequency (F in the name) domain angular velocity signal on the Z axis, coming from the mobile phone gyroscope (feature previously named fBodyGyro-mean()-Z)

Variable 64. stdXaxisFBodyAngularVelocity

         std of the frequency (F in the name) domain angular velocity signal on the X axis, coming from the mobile phone gyroscope (feature previously named fBodyGyro-std()-X)

Variable 65. stdYaxisFBodyAngularVelocity

          std of the frequency (F in the name) domain angular velocity signal on the Y axis, coming from the mobile phone gyroscope (feature previously named fBodyGyro-std()-Y)

Variable 66. stdZaxisFBodyAngularVelocity

         std of the frequency (F in the name) domain angular velocity signal on the Z axis, coming from the mobile phone gyroscope (feature previously named fBodyGyro-std()-Z)

Variable 67. meanXaxisFBodyAngularVelocityFrComponent

         mean of the frequency component of the frequency (F in the name) domain angular velocity signal on the X axis, coming from the mobile phone gyroscope (feature previously named fBodyGyro-meanFreq()-X)

Variable 68. meanYaxisFBodyAngularVelocityFrComponent

          mean of the frequency component of the frequency (F in the name) domain angular velocity signal on the Y axis, coming from the mobile phone gyroscope (feature previously named fBodyGyro-meanFreq()-Y)

Variable 69. meanZaxisFBodyAngularVelocityFrComponent

          mean of the frequency component of the frequency (F in the name) domain angular velocity signal on the Z axis, coming from the mobile phone gyroscope (feature previously named fBodyGyro-meanFreq()-Z)

Variable 70. meanFBodyAccelerationMagn
 
          mean of the magnitude of the frequency (F in the name) domain body acceleration signal, coming from the mobile phone accelerometer (feature previously named fBodyAccMag-mean())

Variable 71. stdFBodyAccelerationMagn

         std of the magnitude of the frequency (F in the name) domain body acceleration signal, coming from the mobile phone accelerometer (feature previously named fBodyAccMag-std())

Variable 72. meanFBodyAccelerationMagnFrComponent

         mean of the frequency component of the frequency (F in the name) domain body acceleration signal, coming from the mobile phone accelerometer (feature previously named fBodyAccMag-meanFreq())

Variable 73. meanFourierFBodyBodyAccelerationMagn

         meanZaxisFourierFBodyAcceleration

         mean of the Fast Fourier Transform of the frequency (F in the name) domain body body acceleration signal, coming from the mobile phone accelerometer (feature previously named fBodyBodyAccJerkMag-mean())

Variable 74. stdFourierFBodyBodyAccelerationMagn

          std of the Fast Fourier Transform of the frequency (F in the name) domain body body acceleration signal, coming from the mobile phone accelerometer (feature previously named fBodyBodyAccJerkMag-std())

Variable 75. meanFourierFBodyBodyAccelerationMagnFrComponent

         mean of the frequency component of the Fast Fourier Transform of the magnitude of the frequency (F in the name) domain body body acceleration signal, coming from the mobile phone accelerometer (feature previously named fBodyBodyAccJerkMag-meanFreq())

Variable 76. meanFBodyBodyAngularVelocityMagn

       mean of the magnitude of the frequency (F in the name) domain body body angular velocity coming from the mobile phone gyroscope (feature previously named fBodyBodyGyroMag-mean())

Variable77. stdFBodyBodyAngularVelocityMagn

        std of the magnitude of the frequency (F in the name) domain body body angular velocity signal, coming from the mobile phone gyroscope (feature previously named fBodyBodyGyroMag-std())

Variable 78. meanFBodyBodyAngularVelocityMagnFrComponent

          mean of the frequency component of the magnitude of the frequency (F in the name) domain body body angular velocity signal, coming from the mobile phone gyroscope (feature previously named fBodyBodyGyroMag-meanFreq())

Variable 79. meanFourierFBodyBodyAngularVelocityMagn
 
          mean of the Fast Fourier Transform of the magnitude of the frequency (F in the name) domain body body angular velocity signal, coming from the mobile phone gyroscope (feature previously named fBodyBodyGyroJerkMag-mean())
         
Variable 80. stdFourierFBodyBodyAngularVelocityMagn 

          std of the Fast Fourier Transform of the magnitude of the frequency (F in the name) domain body body angular velocity signal, coming from the mobile phone gyroscope (feature previously named fBodyBodyGyroJerkMag-std())

Variable 81. meanFourierFBodyBodyAngularVelocityMagnFrComponent

           mean of the frequency component of the Fast Fourier Transform of the magnitude of the frequency (F in the name) domain body body angular velocity signal, coming from the mobile phone gyroscope (feature previously named fBodyBodyGyroJerkMag-meanFreq())
