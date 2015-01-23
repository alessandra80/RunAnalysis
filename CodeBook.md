CodeBook

For the Coursera project we need to join together the files in the test and train folders and after to select only the columns representing the mean and the standard deviation (std) of the variables. So, I choose don't include in the joining process the Inertial Signals folders as they don't contain neither the mean nor the standard deviation for those Signals.  
Once the data joined, the columns of the resulting Data Frame have been renamed using descriptive names. For the columns containin the data of the 561-feature vector, it has been used the names inside features.txt file. Following, only the columns featuring "mean" and "std" in the names have been selected.


Here the new variable names and their meaning:

1. Subject: increasing numbers identifying the subjects (n=30) involved in the experiments. Its range is from 1 to 30

2. Activity: descriptive names of the 6 activities performed by the 30 subjects involved in the experiments. 
	     They are arranged in alphabetical order, grouped by Subject:

	     LAYING
	     SITTING
	     STANDING
	     WALKING
	     WALKING_DOWNSTAIRS
	     WALKING_UPSTAIRS
	     
The following 79 variables represent the mean() of the mean or standard deviation (std()) of the features selected for the experiments. These features come from the accelerometer and gyroscope 3-axial raw signals and originally named tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
The following 79 variables represent the mean(), grouped for Subject and Activity columns, of the signals described by the variable names and for which there is a little explanation.
The original data were been normalised and bounded within [-1,1] so the results from which we start to make the course project were unitlless. Consequently, also the new results are unitlless.


3. meanXaxisTBodyAcceleration
 	mean of the time (T in the name) domain body acceleration signal on the X axis, coming from the mobile phone 	        accelerometer (feature previously named tBodyAcc-mean()-X)   

4. meanYaxisTBodyAcceleration:
	mean of the time (T in the name) domain body acceleration signal on the Y axis, coming from the mobile phone 	        accelerometer (feature previously named tBodyAcc-mean()-Y)

5. meanZaxisTBodyAcceleration:
	mean of the time (T in the name) domain body acceleration signal on the Z axis, coming from the mobile phone 	        accelerometer (feature previously named tBodyAcc-mean()-Z)

6. stdXaxisTBodyAcceleration
	std of the time (T in the name) domain body acceleration signal on the X axis, coming from the mobile phone 	        accelerometer (feature previously named tBodyAcc-std()-X)

7. stdYaxisTBodyAcceleration
	std of the time (T in the name) domain body acceleration signal on the Y axis, coming from the mobile phone 	        accelerometer (feature previously named tBodyAcc-std()-Y)

8. stdZaxisTBodyAcceleration
	std of the time (T in the name) domain body acceleration signal on the Z axis, coming from the mobile phone 	        accelerometer (feature previously named tBodyAcc-std()-Z)

9. meanXaxisTGravityAcceleration
	mean of the time (T in the name) domain gravity acceleration signal on the X axis, coming from the mobile 		phone accelerometer (feature previously named tGravityAcc-mean()-X)

10. meanYaxisTGravityAcceleration
	mean of the time (T in the name) domain gravity acceleration signal on the Y axis, coming from the mobile 		phone accelerometer (feature previously named tGravityAcc-mean()-Y)

11. meanZaxisTGravityAcceleration
	mean of the time (T in the name) domain gravity acceleration signal on the Z axis, coming from the mobile 		phone accelerometer (feature previously named tGravityAcc-mean()-Z)

12. stdXaxisTGravityAcceleration
	std of the time (T in the name) domain gravity acceleration signal on the X axis, coming from the mobile phone         accelerometer (feature previously named tGravityAcc-std()-X)
      
13. stdYaxisTGravityAcceleration
	std of the time (T in the name) domain gravity acceleration signal on the Y axis, coming from the mobile phone         accelerometer (feature previously named tGravityAcc-std()-Y)

14. stdZaxisTGravityAcceleration
       meanXaxisTimeDerivedTBodyAcceleration
meanYaxisTimeDerivedTBodyAcceleration
meanZaxisTimeDerivedTBodyAcceleration
stdXaxisTimeDerivedTBodyAcceleration
stdYaxisTimeDerivedTBodyAcceleration
stdZaxisTimeDerivedTBodyAcceleration
meanXaxisTBodyAngularVelocity
meanYaxisTBodyAngularVelocity
meanZaxisTBodyAngularVelocity
stdXaxisTBodyAngularVelocity
stdYaxisTBodyAngularVelocity
stdZaxisTBodyAngularVelocity
meanXaxisTimeDerivedTBodyAngularVelocity
meanYaxisTimeDerivedTBodyAngularVelocity
meanZaxisTimeDerivedTBodyAngularVelocity
stdXaxisTimeDerivedTBodyAngularVelocity
stdYaxisTimeDerivedTBodyAngularVelocity
stdZaxisTimeDerivedTBodyAngularVelocity
meanTBodyAccelerationMagn
stdTBodyAccelerationMagn
meanTGravityAccelerationMagn
stdTGravityAccelerationMagn
meanTimeDerivedTBodyAccelerationMagn
stdTimeDerivedBodyAccelerationMagn
meanTBodyAngularVelocityMagn
stdTBodyAngularVelocityMagn
meanTimeDerivedTBodyAngularVelocityMagn
stdTimeDerivedTBodyAngularVelocityMagn
meanXaxisFBodyAcceleration
meanYaxisFBodyAcceleration
meanZaxisFBodyAcceleration
stdXaxisFDomainBodyAcceleration
stdYaxisFDomainBodyAcceleration
stdZaxisFDomainBodyAcceleration
meanXaxisFBodyAccelerationFrComponent
meanYaxisFBodyAccelerationFrComponent
meanZaxisFBodyAccelerationFrComponent
meanXaxisFourierFBodyAcceleration
meanYaxisFourierFBodyAcceleration
meanZaxisFourierFBodyAcceleration
stdXaxisFourierFBodyAcceleration
stdYaxisFourierFBodyAcceleration
stdZaxisFourierFBodyAcceleration
meanXaxisFourierFBodyAccelerationFrComponent
meanYaxisFourierFBodyAccelerationFrComponent
meanZaxisFourierFBodyAccelerationFrComponent
meanXaxisFBodyAngularVelocity
meanYaxisFBodyAngularVelocity
meanZaxisFBodyAngularVelocity
stdXaxisFBodyAngularVelocity
stdYaxisFBodyAngularVelocity
stdZaxisFBodyAngularVelocity
meanXaxisFBodyAngularVelocityFrComponent
meanYaxisFBodyAngularVelocityFrComponent
meanZaxisFBodyAngularVelocityFrComponent
meanFBodyAccelerationMagn
stdFBodyAccelerationMagn
meanFBodyAccelerationMagnFrComponent
meanFourierFBodyBodyAccelerationMagn
stdFourierFBodyBodyAccelerationMagn
meanFourierFBodyBodyAccelerationMagnFrComponent
meanFBodyBodyAngularVelocityMagn
stdFBodyBodyAngularVelocityMagn
meanFBodyBodyAngularVelocityMagnFrComponent
meanFourierFBodyBodyAngularVelocityMagn
stdFourierFBodyBodyAngularVelocityMagn 
meanFourierFBodyBodyAngularVelocityMagnFrComponent
