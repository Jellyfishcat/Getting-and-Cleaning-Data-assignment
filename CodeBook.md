# Code book for Coursera Getting and Cleaning Data course project
author: "Xiaomeng Li"
date: "16.08.2021"
output: "tidydata.txt""
## Data description
The final summary tidy dataset **tidydata.txt** contains the average of each variable for each activity and each subject from the Human Activity Recognition Using Smartphones Data Set. 
The first row contains the names of 68 columns.
68 columns: 66 variables, which are listed and described in the Variable section; as well as 2 identifiers, listed and described in the Identifier section
180 rows: contain the values of these variables.
## Identifier
The final tidydata is grouped by the following identifiers to calculate mean and standard deviation:
**subject**: The ID of the subject who carried out the experiment. 1-30
**activity**: The type of activity performed when the corresponding measurements were taken. 
1-6:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING
## Variable
The features selected for the database come from the accelerometer and gyroscope 3-axial raw signals **tAcc_XYZ** and **tGyro_XYZ**. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (**tBodyAcc_XYZ** and **tGravityAcc_XYZ**) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (**tBodyAccJerk_XYZ** and **tBodyGyroJerk_XYZ**). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (**tBodyAccMag**, **tGravityAccMag**, **tBodyAccJerkMag**, **tBodyGyroMag**, **tBodyGyroJerkMag**). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing **fBodyAcc_XYZ**, **fBodyAccJerk_XYZ**, **fBodyGyro_XYZ**, **fBodyAccJerkMag**, **fBodyGyroMag**, **fBodyGyroJerkMag**. (Note the 'f' to indicate frequency domain signals)

1. 't' or 'f' - time or frequency domain signals
2. 'Acc' or 'Gyro'- data from the accelerometer or gyroscope
3. 'Body' or 'Gravity' - the acceleration signal was then separated into body and gravity acceleration signals
4. 'Jerk' - Jerk signals based on body linear acceleration and angular velocity
5. 'Meg' - the magnitude of these three-dimensional signals
6. 'mean' - Mean value
7. 'std' - Standard deviation
8. 'XYZ' - 3-axial signals in the X, Y and Z directions.

All measurements are floating-point values, normalised and bounded within [-1,1].

1. "tBodyAcc_mean_X"          
2. "tBodyAcc_mean_Y"           
3. "tBodyAcc_mean_Z"           
4. "tBodyAcc_std_X"           
5. "tBodyAcc_std_Y"            
6. "tBodyAcc_std_Z"            
7. "tGravityAcc_mean_X"       
8. "tGravityAcc_mean_Y"        
9. "tGravityAcc_mean_Z"        
10. "tGravityAcc_std_X"        
11. "tGravityAcc_std_Y"         
12. "tGravityAcc_std_Z"         
13. "tBodyAccJerk_mean_X"      
14. "tBodyAccJerk_mean_Y"       
15. "tBodyAccJerk_mean_Z"       
16. "tBodyAccJerk_std_X"       
17. "tBodyAccJerk_std_Y"        
18. "tBodyAccJerk_std_Z"        
19. "tBodyGyro_mean_X"         
20. "tBodyGyro_mean_Y"          
21. "tBodyGyro_mean_Z"          
22. "tBodyGyro_std_X"          
23. "tBodyGyro_std_Y"           
24. "tBodyGyro_std_Z"           
25. "tBodyGyroJerk_mean_X"     
26. "tBodyGyroJerk_mean_Y"      
27. "tBodyGyroJerk_mean_Z"      
28. "tBodyGyroJerk_std_X"      
29. "tBodyGyroJerk_std_Y"       
30. "tBodyGyroJerk_std_Z"       
31. "tBodyAccMag_mean"         
32. "tBodyAccMag_std"           
33. "tGravityAccMag_mean"       
34. "tGravityAccMag_std"       
35. "tBodyAccJerkMag_mean"      
36. "tBodyAccJerkMag_std"       
37. "tBodyGyroMag_mean"        
38. "tBodyGyroMag_std"          
39. "tBodyGyroJerkMag_mean"     
40. "tBodyGyroJerkMag_std"     
41. "fBodyAcc_mean_X"           
42. "fBodyAcc_mean_Y"           
43. "fBodyAcc_mean_Z"          
44. "fBodyAcc_std_X"            
45. "fBodyAcc_std_Y"           
46. "fBodyAcc_std_Z"           
47. "fBodyAccJerk_mean_X"       
48. "fBodyAccJerk_mean_Y"       
49. "fBodyAccJerk_mean_Z"      
50. "fBodyAccJerk_std_X"        
51. "fBodyAccJerk_std_Y"        
52. "fBodyAccJerk_std_Z"       
53. "fBodyGyro_mean_X"          
54. "fBodyGyro_mean_Y"          
55. "fBodyGyro_mean_Z"         
56. "fBodyGyro_std_X"           
57. "fBodyGyro_std_Y"           
58. "fBodyGyro_std_Z"          
59. "fBodyAccMag_mean"          
60. "fBodyAccMag_std"           
61. "fBodyBodyAccJerkMag_mean" 
62. "fBodyBodyAccJerkMag_std"   
63. "fBodyBodyGyroMag_mean"     
64. "fBodyBodyGyroMag_std"     
65. "fBodyBodyGyroJerkMag_mean" 
66. "fBodyBodyGyroJerkMag_std" 

The tidydata was created by run_analysis.R R script.
