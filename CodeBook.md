Cousera Getting and Cleaning Data Project : Code Book

## Purpose of the project
To demonstrate our ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis

### Source Data
Data used in this project come from Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Measurments come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Among the variables that were estimated from these signals, this project has a concern with :
mean(): Mean value
std(): Standard deviation

### Data Components Used
* "activity_labels.txt" : Links the class labels with their activity name.
* "features.txt" : List of all features.
* "subject_test.txt" : Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
* "X_test.txt" : Test set.
* "y_test.txt" : Test labels.
* "subject_train.txt" : Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
* "X_train.txt" : Training set.
* "y_train.txt" : Trainig labels.

### Transformation
In order to produce a tidy data with R, some transformation have been made
* Remove special caracters from features names
* Merge train and test data to create one data set
* Identify mean and standard deviation and select mean and standard deviation variables
* Merge train and test activities. Merge train and test subjects
* Create a dataframe with activity, subject, mean and standard deviation columns
* Merge with activity_labels to include labels
* Subset and create mean data by activity and subject
* Merge all subsets 
* Create a file with tidy data : "tidy_data.txt"
* Create a file with new variables : "variables.txt"

### Tidy Data
A set of 180 rows and 89 variables.
Each row displays the average of each variable for each activity and each subject. 

### Variables
The 89 variables used to produce tidy data are the result of the above transformation
===========================================
"activity_num" : activity class
"subject" : subject number
"activity_label" : acivity label
"others" : all mean and std measurments
===========================================
"activity_num"
"subject"
"tBodyAcc_mean_X"
"tBodyAcc_mean_Y"
"tBodyAcc_mean_Z"
"tBodyAcc_std_X"
"tBodyAcc_std_Y"
"tBodyAcc_std_Z"
"tGravityAcc_mean_X"
"tGravityAcc_mean_Y"
"tGravityAcc_mean_Z"
"tGravityAcc_std_X"
"tGravityAcc_std_Y"
"tGravityAcc_std_Z"
"tBodyAccJerk_mean_X"
"tBodyAccJerk_mean_Y"
"tBodyAccJerk_mean_Z"
"tBodyAccJerk_std_X"
"tBodyAccJerk_std_Y"
"tBodyAccJerk_std_Z"
"tBodyGyro_mean_X"
"tBodyGyro_mean_Y"
"tBodyGyro_mean_Z"
"tBodyGyro_std_X"
"tBodyGyro_std_Y"
"tBodyGyro_std_Z"
"tBodyGyroJerk_mean_X"
"tBodyGyroJerk_mean_Y"
"tBodyGyroJerk_mean_Z"
"tBodyGyroJerk_std_X"
"tBodyGyroJerk_std_Y"
"tBodyGyroJerk_std_Z"
"tBodyAccMag_mean"
"tBodyAccMag_std"
"tGravityAccMag_mean"
"tGravityAccMag_std"
"tBodyAccJerkMag_mean"
"tBodyAccJerkMag_std"
"tBodyGyroMag_mean"
"tBodyGyroMag_std"
"tBodyGyroJerkMag_mean"
"tBodyGyroJerkMag_std"
"fBodyAcc_mean_X"
"fBodyAcc_mean_Y"
"fBodyAcc_mean_Z"
"fBodyAcc_std_X"
"fBodyAcc_std_Y"
"fBodyAcc_std_Z"
"fBodyAcc_meanFreq_X"
"fBodyAcc_meanFreq_Y"
"fBodyAcc_meanFreq_Z"
"fBodyAccJerk_mean_X"
"fBodyAccJerk_mean_Y"
"fBodyAccJerk_mean_Z"
"fBodyAccJerk_std_X"
"fBodyAccJerk_std_Y"
"fBodyAccJerk_std_Z"
"fBodyAccJerk_meanFreq_X"
"fBodyAccJerk_meanFreq_Y"
"fBodyAccJerk_meanFreq_Z"
"fBodyGyro_mean_X"
"fBodyGyro_mean_Y"
"fBodyGyro_mean_Z"
"fBodyGyro_std_X"
"fBodyGyro_std_Y"
"fBodyGyro_std_Z"
"fBodyGyro_meanFreq_X"
"fBodyGyro_meanFreq_Y"
"fBodyGyro_meanFreq_Z"
"fBodyAccMag_mean"
"fBodyAccMag_std"
"fBodyAccMag_meanFreq"
"fBodyBodyAccJerkMag_mean"
"fBodyBodyAccJerkMag_std"
"fBodyBodyAccJerkMag_meanFreq"
"fBodyBodyGyroMag_mean"
"fBodyBodyGyroMag_std"
"fBodyBodyGyroMag_meanFreq"
"fBodyBodyGyroJerkMag_mean"
"fBodyBodyGyroJerkMag_std"
"fBodyBodyGyroJerkMag_meanFreq"
"angletBodyAccMeangravity"
"angletBodyAccJerkMeangravityMean"
"angletBodyGyroMeangravityMean"
"angletBodyGyroJerkMeangravityMean"
"angleXgravityMean"
"angleYgravityMean"
"angleZgravityMean"
"activity_label"

