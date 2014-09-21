---
title: "CodeBook"
author: "Art Webb"
date: "September 21, 2014"
output: html_document
---  
  
# Data Dictionary
  
## Raw data
  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
* 'features.txt': List of all features
* 'activity_labels.txt': Links the class labels with their activity name
* 'train/X_train.txt': Training set
* 'train/y_train.txt': Training labels
* 'test/X_test.txt': Test set
* 'test/y_test.txt': Test labels
* 'train/subject_train.txt': ids the subject who performed the activity
* 'train/Inertial Signals/total_acc_x_train.txt': acceleration on X axis in standard gravity units 'g' 
* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration
* 'train/Inertial Signals/body_gyro_x_train.txt': angular velocity measured by the gyroscope
  
## Experimental Design [run_analysis.R]
  
1. download and unzip data using download.file() and unzip()
2. read data into R via read.file()
3. join test/training data and add appropriate labels, using merge(), rbind() and cbind()
4. extract mean and standard deviation using grep()
5. create tidy data set, averaging activity and subject, using the reshape2 package, melt() and dcast
6. write data into a new file using write.table() and print
  
## Variables
  
**Subject_all** [number]
  
A sequential unique number allocated for each volunteer who participated in the experiment [1...30 Subject number]
  
**label_names** [character]
  
Each subject performed six types of activities, this variable refers to the activity names
  
WALKING_DOWNSTAIRS 
WALKING_UPSTAIRS 
WALKING
SITTING 
LAYING
STANDING
  
**tBodyAcc-mean()-X** [numeric]
  
Average of all mean readings for time domain body acceleration signals (prefix 't' to denote time and Acc for acceleration) in the X direction [[-1..1]]

**tBodyAcc-mean()-Y** [numeric]
  
Average of all mean readings for time domain body acceleration signals (prefix 't' to denote time and Acc for acceleration) in the Y direction [[-1..1]]
  
**tBodyAcc-mean()-Z** [numeric]
  
Average of all mean readings for time domain body acceleration signals (prefix 't' to denote time and Acc for acceleration) in the Z direction [[-1..1]]
  
**tBodyAcc-std()-X** [numeric]
  
Average of all standard deviation readings for time domain body acceleration signals (prefix 't' to denote time and Acc for acceleration) in the X direction [[-1..1]]
  
**tBodyAcc-std()-Y** [numeric]
  
Average of all standard deviation readings for time domain body acceleration signals (prefix 't' to denote time and Acc for acceleration) in the Y direction [[-1..1]]
  
**tBodyAcc-std()-Z** [numeric]
  
Average of all standard deviation readings for time domain body acceleration signals (prefix 't' to denote time and Acc for acceleration) in the Z direction [[-1..1]]
  
**tGravityAcc-mean()-X** [numeric]
  
Average of all mean readings for time domain gravity acceleration signals (prefix 't' to denote time and Acc for acceleration) in the X direction [[-1..1]]
  
**tGravityAcc-mean()-Y** [numeric]
  
Average of all mean readings for time domain gravity acceleration signals (prefix 't' to denote time and Acc for acceleration) in the Y direction [[-1..1]]
  
**tGravityAcc-mean()-Z** [numeric]
  
Average of all mean readings for time domain gravity acceleration signals (prefix 't' to denote time and Acc for acceleration) in the Z direction [[-1..1]]
  
**tGravityAcc-std()-X** [numeric]
  
Average of all standard deviation readings for time domain gravity acceleration signals (prefix 't' to denote time and Acc for acceleration) in the X direction [[-1..1]]
  
**tGravityAcc-std()-Y** [numeric]
  
Average of all standard deviation readings for time domain gravity acceleration signals (prefix 't' to denote time and Acc for acceleration) in the Y direction [-1..1]
  
**tGravityAcc-std()-Z** [numeric]
  
Average of all standard deviation readings for time domain gravity acceleration signals (prefix 't' to denote time and Acc for acceleration) in the Z direction [-1..1]
  
**tBodyAccJerk-mean()-X** [numeric]
  
Average of all mean readings for body linear acceleration derived in time to obtain jerk signals (prefix 't' to denote time and Acc for acceleration) in the X direction [-1..1]
  
**tBodyAccJerk-mean()-Y** [numeric]
  
Average of all mean readings for body linear acceleration derived in time to obtain jerk signals (prefix 't' to denote time and Acc for acceleration) in the Y direction [-1..1]
  
**tBodyAccJerk-mean()-Z** [numeric]
  
Average of all mean readings for body linear acceleration derived in time to obtain jerk signals (prefix 't' to denote time and Acc for acceleration) in the Z direction [-1..1]
  
**tBodyAccJerk-std()-X** [numeric]
  
Average of all standard deviation readings for body linear acceleration derived in time to obtain jerk signals (prefix 't' to denote time and Acc for acceleration) in the X direction [-1..1]
  
**tBodyAccJerk-std()-Y** [numeric]
  
Average of all standard deviation readings for body linear acceleration derived in time to obtain jerk signals (prefix 't' to denote time and Acc for acceleration) in the Y direction [-1..1]
  
**tBodyAccJerk-std()-Z** [numeric]
  
Average of all standard deviation readings for body linear acceleration derived in time to obtain jerk signals (prefix 't' to denote time and Acc for acceleration) in the Z direction [-1..1]
  
**tBodyGyro-mean()-X** [numeric]
  
Average of all mean readings for body angular velocity derived in time to obtain jerk signals (prefix 't' to denote time and Gyro for angular velocity) in the X direction [-1..1]
  
**tBodyGyro-mean()-Y** [numeric]
  
Average of all mean readings for body angular velocity derived in time to obtain jerk signals (prefix 't' to denote time and Gyro for angular velocity) in the Y direction [-1..1]
  
**tBodyGyro-mean()-Z** [numeric]
  
Average of all mean readings for body angular velocity derived in time to obtain jerk signals (prefix 't' to denote time and Gyro for angular velocity) in the Z direction [-1..1]
  
**tBodyGyro-std()-X** [numeric]
  
Average of all standard deviation readings for body angular velocity derived in time to obtain jerk signals (prefix 't' to denote time and Gyro for angular velocity) in the X direction [-1..1]
  
**tBodyGyro-std()-Y** [numeric]
  
Average of all standard deviation readings for body angular velocity derived in time to obtain jerk signals (prefix 't' to denote time and Gyro for angular velocity) in the Y direction [-1..1]
  
**tBodyGyro-std()-Z** [numeric]
  
Average of all standard deviation readings for body angular velocity derived in time to obtain jerk signals (prefix 't' to denote time and Gyro for angular velocity) in the Z direction [-1..1]
  
**tBodyGyroJerk-mean()-X** [numeric]
  
Average of all mean readings for body angular velocity derived in time to obtain jerk signals (prefix 't' to denote time and Gyro for angular velocity) in the X direction [-1..1]
  
**tBodyGyroJerk-mean()-Y** [numeric]
  
Average of all mean readings for body angular velocity derived in time to obtain jerk signals (prefix 't' to denote time and Gyro for angular velocity) in the Y direction [-1..1]
  
**tBodyGyroJerk-mean()-Z** [numeric]
  
Average of all mean readings for body angular velocity derived in time to obtain jerk signals (prefix 't' to denote time and Gyro for angular velocity) in the Z direction [-1..1]
  
**tBodyGyroJerk-std()-X** [numeric]
  
Average of all standard deviation readings for body angular velocity derived in time to obtain jerk signals (prefix 't' to denote time and Gyro for angular velocity) in the X direction [-1..1]
  
**tBodyGyroJerk-std()-Y** [numeric]
  
Average of all standard deviation readings for body angular velocity derived in time to obtain jerk signals (prefix 't' to denote time and Gyro for angular velocity) in the Y direction [-1..1]
  
**tBodyGyroJerk-std()-Z** [numeric]
  
Average of all standard deviation readings for body angular velocity derived in time to obtain jerk signals (prefix 't' to denote time and Gyro for angular velocity) in the Z direction [-1..1]
  
**tBodyAccMag-mean()** [numeric]
  
Average of all mean readings for the magnitude calculated using the Euclidean norm[-1..1]
  
**tBodyAccMag-std()** [numeric]
  
Average of all standard deviation readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**tGravityAccMag-mean()** [numeric]
  
Average of all mean readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**tGravityAccMag-std()** [numeric]
  
Average of all standard deviation readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**tBodyAccJerkMag-mean()** [numeric]
  
Average of all mean readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**tBodyAccJerkMag-std()** [numeric]
  
Average of all standard deviation readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**tBodyGyroMag-mean()** [numeric]
  
Average of all mean readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**tBodyGyroMag-std()** [numeric]
  
Average of all standard deviation readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**tBodyGyroJerkMag-mean()** [numeric]
  
Average of all mean readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**tBodyGyroJerkMag-std()** [numeric]
  
Average of all standard deviation readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**fBodyAcc-mean()-X** [numeric]
  
Average of all mean readings for body acceleration signals by applying Fast Fourier Transform(FFT)(prefix 'f' to denote FFT and Acc for acceleration) in the X direction [-1..1]
  
**fBodyAcc-mean()-Y** [numeric]
  
Average of all mean readings for body acceleration signals by applying Fast Fourier Transform(FFT)(prefix 'f' to denote FFT and Acc for acceleration) in the Y direction [-1..1]
  
**fBodyAcc-mean()-Z** [numeric]
  
Average of all mean readings for body acceleration signals by applying Fast Fourier Transform(FFT)(prefix 'f' to denote FFT and Acc for acceleration) in the Z direction [-1..1]
  
**fBodyAcc-std()-X** [numeric]
  
Average of all standard deviation readings for body acceleration signals by applying Fast Fourier Transform(FFT)(prefix 'f' to denote FFT and Acc for acceleration) in the X direction [-1..1]
  
**fBodyAcc-std()-Y** [numeric]
  
Average of all standard deviation readings for body acceleration signals by applying Fast Fourier Transform(FFT)(prefix 'f' to denote FFT and Acc for acceleration) in the Y direction [-1..1]
  
**fBodyAcc-std()-Z** [numeric]
  
Average of all standard deviation readings for body acceleration signals by applying Fast Fourier Transform(FFT)(prefix 'f' to denote FFT and Acc for acceleration) in the Z direction [-1..1]
  
**fBodyAccJerk-mean()-X** [numeric]
  
Average of all mean readings for body linear acceleration derived by applying Fast Fourier Transform(FFT) to obtain jerk signals (prefix 'f' to denote FFT and Acc for acceleration) in the X direction [-1..1]
  
**fBodyAccJerk-mean()-Y** [numeric]
  
Average of all mean readings for body linear acceleration derived by applying Fast Fourier Transform(FFT) to obtain jerk signals (prefix 'f' to denote FFT and Acc for acceleration) in the Y direction [-1..1]
  
**fBodyAccJerk-mean()-Z** [numeric]
  
Average of all mean readings for body linear acceleration derived by applying Fast Fourier Transform(FFT) to obtain jerk signals (prefix 'f' to denote FFT and Acc for acceleration) in the Z direction [-1..1]
  
**fBodyAccJerk-std()-X** [numeric]
  
Average of all standard deviation readings for body linear acceleration derived by applying Fast Fourier Transform(FFT) to obtain jerk signals (prefix 'f' to denote FFT and Acc for acceleration) in the X direction [-1..1]
  
**fBodyAccJerk-std()-Y** [numeric]
  
Average of all standard deviation readings for body linear acceleration derived by applying Fast Fourier Transform(FFT) to obtain jerk signals (prefix 'f' to denote FFT and Acc for acceleration) in the Y direction [-1..1]
  
**fBodyAccJerk-std()-Z** [numeric]
  
Average of all standard deviation readings for body linear acceleration derived by applying Fast Fourier Transform(FFT) to obtain jerk signals (prefix 'f' to denote FFT and Acc for acceleration) in the Z direction [-1..1]
  
**fBodyGyro-mean()-X** [numeric]
  
Average of all mean readings for body angular velocity derived by applying Fast Fourier Transform(FFT) to obtain jerk signals (prefix 'f' to denote FFT and Gyro for angular velocity) in the X direction [-1..1]
  
**fBodyGyro-mean()-Y** [numeric]
  
Average of all mean readings for body angular velocity derived by applying Fast Fourier Transform(FFT) to obtain jerk signals (prefix 'f' to denote FFT and Gyro for angular velocity) in the Y direction [-1..1]
  
**fBodyGyro-mean()-Z** [numeric]
  
Average of all mean readings for body angular velocity derived by applying Fast Fourier Transform(FFT) to obtain jerk signals (prefix 'f' to denote FFT and Gyro for angular velocity) in the Z direction [-1..1]
  
**fBodyGyro-std()-X** [numeric]
  
Average of all standard deviation readings for body angular velocity derived by applying Fast Fourier Transform(FFT) to obtain jerk signals (prefix 'f' to denote FFT and Gyro for angular velocity) in the X direction [-1..1]
  
**fBodyGyro-std()-Y** [numeric]
  
Average of all standard deviation readings for body angular velocity derived by applying Fast Fourier Transform(FFT) to obtain jerk signals (prefix 'f' to denote FFT and Gyro for angular velocity) in the Y direction [-1..1]
  
**fBodyGyro-std()-Z** [numeric]
  
Average of all standard deviation readings for body angular velocity derived by applying Fast Fourier Transform(FFT) to obtain jerk signals (prefix 'f' to denote FFT and Gyro for angular velocity) in the Z direction [-1..1]
  
**fBodyAccMag-mean()** [numeric]
  
Average of all mean readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**fBodyAccMag-std()** [numeric]
  
Average of all standard deviation readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**fBodyBodyAccJerkMag-mean()** [numeric]
  
Average of all mean readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**fBodyBodyAccJerkMag-std()** [numeric]
  
Average of all standard deviation readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**fBodyBodyGyroMag-mean()** [numeric]
  
Average of all mean readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**fBodyBodyGyroMag-std()** [numeric]
  
Average of all standard deviation readings for the magnitude calculated using the Euclidean norm [-1..1]
  
**fBodyBodyGyroJerkMag-mean()** [numeric]
  
Average of all mean readings for the magnitude calculated using the Euclidean norm [-1..1]
   
**fBodyBodyGyroJerkMag-std()**  [numeric]
  
Average of all standard deviation readings for the magnitude calculated using the Euclidean norm [-1..1]