# Code book for Coursera Getting and Cleaning Data course project
- author: "Xiaomeng Li"
- date: "16.08.2021"
- output: "tidydata.txt""
## Data description
The final summary tidy dataset **tidydata.txt** created by run_analysis.R R script, contains the average of each variable for each activity and each subject from the Human Activity Recognition Using Smartphones Data Set. 
The first row contains the names of 88 columns.
- 88 columns: 86 variables, which are listed and described in the measurement section; as well as 2 identifiers, listed and described in the Identifier section
- 180 rows: contain the values of these variables.
## Identifier
The final tidydata is grouped by the following identifiers to calculate mean and standard deviation:
1. **subject**: The ID of the subject who carried out the experiment. 1-30
2. **activity**: The type of activity performed when the corresponding measurements were taken. 
1-6:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING
## Measurement
The features selected for the database come from the accelerometer and gyroscope 3-axial raw signals **tAcc_XYZ** and **tGyro_XYZ**. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (**tBodyAcc_XYZ** and **tGravityAcc_XYZ**) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (**tBodyAccJerk_XYZ** and **tBodyGyroJerk_XYZ**). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (**tBodyAccMag**, **tGravityAccMag**, **tBodyAccJerkMag**, **tBodyGyroMag**, **tBodyGyroJerkMag**). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing **fBodyAcc_XYZ**, **fBodyAccJerk_XYZ**, **fBodyGyro_XYZ**, **fBodyAccJerkMag**, **fBodyGyroMag**, **fBodyGyroJerkMag**. (Note the 'f' to indicate frequency domain signals)

- 't' or 'f' - time or frequency domain signals
- 'Acc' or 'Gyro'- data from the accelerometer or gyroscope
- 'Body' or 'Gravity' - the acceleration signal was then separated into body and gravity acceleration signals
- 'Jerk' - Jerk signals based on body linear acceleration and angular velocity
- 'Meg' - the magnitude of these three-dimensional signals
- 'mean' - Mean value
- 'std' - Standard deviation
- 'XYZ' - 3-axial signals in the X, Y and Z directions.

All measurements are floating-point values, normalised and bounded within [-1,1].

 [1] "tBodyAcc-mean()-X"                    "tBodyAcc-mean()-Y"                    "tBodyAcc-mean()-Z"                   
 [4] "tBodyAcc-std()-X"                     "tBodyAcc-std()-Y"                     "tBodyAcc-std()-Z"                    
 [7] "tGravityAcc-mean()-X"                 "tGravityAcc-mean()-Y"                 "tGravityAcc-mean()-Z"                
[10] "tGravityAcc-std()-X"                  "tGravityAcc-std()-Y"                  "tGravityAcc-std()-Z"                 
[13] "tBodyAccJerk-mean()-X"                "tBodyAccJerk-mean()-Y"                "tBodyAccJerk-mean()-Z"               
[16] "tBodyAccJerk-std()-X"                 "tBodyAccJerk-std()-Y"                 "tBodyAccJerk-std()-Z"                
[19] "tBodyGyro-mean()-X"                   "tBodyGyro-mean()-Y"                   "tBodyGyro-mean()-Z"                  
[22] "tBodyGyro-std()-X"                    "tBodyGyro-std()-Y"                    "tBodyGyro-std()-Z"                   
[25] "tBodyGyroJerk-mean()-X"               "tBodyGyroJerk-mean()-Y"               "tBodyGyroJerk-mean()-Z"              
[28] "tBodyGyroJerk-std()-X"                "tBodyGyroJerk-std()-Y"                "tBodyGyroJerk-std()-Z"               
[31] "tBodyAccMag-mean()"                   "tBodyAccMag-std()"                    "tGravityAccMag-mean()"               
[34] "tGravityAccMag-std()"                 "tBodyAccJerkMag-mean()"               "tBodyAccJerkMag-std()"               
[37] "tBodyGyroMag-mean()"                  "tBodyGyroMag-std()"                   "tBodyGyroJerkMag-mean()"             
[40] "tBodyGyroJerkMag-std()"               "fBodyAcc-mean()-X"                    "fBodyAcc-mean()-Y"                   
[43] "fBodyAcc-mean()-Z"                    "fBodyAcc-std()-X"                     "fBodyAcc-std()-Y"                    
[46] "fBodyAcc-std()-Z"                     "fBodyAcc-meanFreq()-X"                "fBodyAcc-meanFreq()-Y"               
[49] "fBodyAcc-meanFreq()-Z"                "fBodyAccJerk-mean()-X"                "fBodyAccJerk-mean()-Y"               
[52] "fBodyAccJerk-mean()-Z"                "fBodyAccJerk-std()-X"                 "fBodyAccJerk-std()-Y"                
[55] "fBodyAccJerk-std()-Z"                 "fBodyAccJerk-meanFreq()-X"            "fBodyAccJerk-meanFreq()-Y"           
[58] "fBodyAccJerk-meanFreq()-Z"            "fBodyGyro-mean()-X"                   "fBodyGyro-mean()-Y"                  
[61] "fBodyGyro-mean()-Z"                   "fBodyGyro-std()-X"                    "fBodyGyro-std()-Y"                   
[64] "fBodyGyro-std()-Z"                    "fBodyGyro-meanFreq()-X"               "fBodyGyro-meanFreq()-Y"              
[67] "fBodyGyro-meanFreq()-Z"               "fBodyAccMag-mean()"                   "fBodyAccMag-std()"                   
[70] "fBodyAccMag-meanFreq()"               "fBodyBodyAccJerkMag-mean()"           "fBodyBodyAccJerkMag-std()"           
[73] "fBodyBodyAccJerkMag-meanFreq()"       "fBodyBodyGyroMag-mean()"              "fBodyBodyGyroMag-std()"              
[76] "fBodyBodyGyroMag-meanFreq()"          "fBodyBodyGyroJerkMag-mean()"          "fBodyBodyGyroJerkMag-std()"          
[79] "fBodyBodyGyroJerkMag-meanFreq()"      "angle(tBodyAccMean_gravity)"          "angle(tBodyAccJerkMean)_gravityMean)"
[82] "angle(tBodyGyroMean_gravityMean)"     "angle(tBodyGyroJerkMean_gravityMean)" "angle(X_gravityMean)"                
[85] "angle(Y_gravityMean)"                 "angle(Z_gravityMean)"                

## Midway products
- features <- features.txt : 561 rows, 2 columns. List of all the measurements in UCI dataset
- activityname <- activity_labels.txt : 6 rows, 2 columns. Contains 6 activities listed above with IDs corresponding to y_test/training.txt
- test_subject <- test/subject_test.txt : 2947 rows, 1 column. Each row identifies the subject who performed the activity for each window sample.
- test <- test/X_test.txt : 2947 rows, 561 columns. Contains test sets
- test_label <- test/y_test.txt : 2947 rows, 1 columns. Contains test data of activities' labels
- training_subject <- test/subject_train.txt : 7352 rows, 1 column. 
- training <- test/X_train.txt : 7352 rows, 561 columns. Contains training sets
- training_label <- test/y_train.txt : 7352 rows, 1 columns. Contains training data of activities' labels
- test1/training1: 2947 rows, 563 columns/7352 rows, 563 columns. Combination of test/training sets, test/training_label and subject
- merged: 10299 rows, 561 columns. Combination of test1 and training1 using rbind() function
- final: 10299 rows, 88 columns. Subset of merged set, which only contains mean/standard deviation variables and 2 identifiers.
- tidydata: 180 rows, 88 columns. The final clean data, the output data.
- selected: a list of integer. Contains locations of each variable requested (variables on the mean and standard deviation)
