
Introduction
============

This codebook describes the original dataset that our script run_analysis.R takes and provides a short description of the steps in the r script. The resulting dataset, its labels and dimensions are covered in the Codebook section.


Background
==========

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Our script takes this dataset as input

Description of run_analysis.R
=============================
Steps in this code

1 Downloading the data

2 Merges the training and the test sets to create one data set using various rbind and cbind commands

3 Extracts only the measurements on the mean and standard deviation for each measurement using the grep function

4 Uses descriptive activity names to name the activities in the data set

5 Appropriately labels the data set with descriptive variable names.

6 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. For this we use the ddply function from the plyr library

7 Write data to the dataset Samsung_averaged_dataset.txt

Codebook Samsung_averaged_dataset.txt
==========

ID		              Subject identifier
Activity		        Activity of the Subject
tBodyAcc-mean()-X		Average value of tBodyAcc-mean()-X for this subject while doing this activity
tBodyAcc-mean()-Y		Average value of tBodyAcc-mean()-Y for this subject while doing this activity
tBodyAcc-mean()-Z		Average value of tBodyAcc-mean()-Z for this subject while doing this activity
tBodyAcc-std()-X		Average value of tBodyAcc-std()-X for this subject while doing this activity
tBodyAcc-std()-Y		Average value of tBodyAcc-std()-Y for this subject while doing this activity
tBodyAcc-std()-Z		Average value of tBodyAcc-std()-Z for this subject while doing this activity
tGravityAcc-mean()-X		Average value of tGravityAcc-mean()-X for this subject while doing this activity
tGravityAcc-mean()-Y		Average value of tGravityAcc-mean()-Y for this subject while doing this activity
tGravityAcc-mean()-Z		Average value of tGravityAcc-mean()-Z for this subject while doing this activity
tGravityAcc-std()-X		Average value of tGravityAcc-std()-X for this subject while doing this activity
tGravityAcc-std()-Y		Average value of tGravityAcc-std()-Y for this subject while doing this activity
tGravityAcc-std()-Z		Average value of tGravityAcc-std()-Z for this subject while doing this activity
tBodyAccJerk-mean()-X		Average value of tBodyAccJerk-mean()-X for this subject while doing this activity
tBodyAccJerk-mean()-Y		Average value of tBodyAccJerk-mean()-Y for this subject while doing this activity
tBodyAccJerk-mean()-Z		Average value of tBodyAccJerk-mean()-Z for this subject while doing this activity
tBodyAccJerk-std()-X		Average value of tBodyAccJerk-std()-X for this subject while doing this activity
tBodyAccJerk-std()-Y		Average value of tBodyAccJerk-std()-Y for this subject while doing this activity
tBodyAccJerk-std()-Z		Average value of tBodyAccJerk-std()-Z for this subject while doing this activity
tBodyGyro-mean()-X		Average value of tBodyGyro-mean()-X for this subject while doing this activity
tBodyGyro-mean()-Y		Average value of tBodyGyro-mean()-Y for this subject while doing this activity
tBodyGyro-mean()-Z		Average value of tBodyGyro-mean()-Z for this subject while doing this activity
tBodyGyro-std()-X		Average value of tBodyGyro-std()-X for this subject while doing this activity
tBodyGyro-std()-Y		Average value of tBodyGyro-std()-Y for this subject while doing this activity
tBodyGyro-std()-Z		Average value of tBodyGyro-std()-Z for this subject while doing this activity
tBodyGyroJerk-mean()-X		Average value of tBodyGyroJerk-mean()-X for this subject while doing this activity
tBodyGyroJerk-mean()-Y		Average value of tBodyGyroJerk-mean()-Y for this subject while doing this activity
tBodyGyroJerk-mean()-Z		Average value of tBodyGyroJerk-mean()-Z for this subject while doing this activity
tBodyGyroJerk-std()-X		Average value of tBodyGyroJerk-std()-X for this subject while doing this activity
tBodyGyroJerk-std()-Y		Average value of tBodyGyroJerk-std()-Y for this subject while doing this activity
tBodyGyroJerk-std()-Z		Average value of tBodyGyroJerk-std()-Z for this subject while doing this activity
tBodyAccMag-mean()		Average value of tBodyAccMag-mean() for this subject while doing this activity
tBodyAccMag-std()		Average value of tBodyAccMag-std() for this subject while doing this activity
tGravityAccMag-mean()		Average value of tGravityAccMag-mean() for this subject while doing this activity
tGravityAccMag-std()		Average value of tGravityAccMag-std() for this subject while doing this activity
tBodyAccJerkMag-mean()		Average value of tBodyAccJerkMag-mean() for this subject while doing this activity
tBodyAccJerkMag-std()		Average value of tBodyAccJerkMag-std() for this subject while doing this activity
tBodyGyroMag-mean()		Average value of tBodyGyroMag-mean() for this subject while doing this activity
tBodyGyroMag-std()		Average value of tBodyGyroMag-std() for this subject while doing this activity
tBodyGyroJerkMag-mean()		Average value of tBodyGyroJerkMag-mean() for this subject while doing this activity
tBodyGyroJerkMag-std()		Average value of tBodyGyroJerkMag-std() for this subject while doing this activity
fBodyAcc-mean()-X		Average value of fBodyAcc-mean()-X for this subject while doing this activity
fBodyAcc-mean()-Y		Average value of fBodyAcc-mean()-Y for this subject while doing this activity
fBodyAcc-mean()-Z		Average value of fBodyAcc-mean()-Z for this subject while doing this activity
fBodyAcc-std()-X		Average value of fBodyAcc-std()-X for this subject while doing this activity
fBodyAcc-std()-Y		Average value of fBodyAcc-std()-Y for this subject while doing this activity
fBodyAcc-std()-Z		Average value of fBodyAcc-std()-Z for this subject while doing this activity
fBodyAcc-meanFreq()-X		Average value of fBodyAcc-meanFreq()-X for this subject while doing this activity
fBodyAcc-meanFreq()-Y		Average value of fBodyAcc-meanFreq()-Y for this subject while doing this activity
fBodyAcc-meanFreq()-Z		Average value of fBodyAcc-meanFreq()-Z for this subject while doing this activity
fBodyAccJerk-mean()-X		Average value of fBodyAccJerk-mean()-X for this subject while doing this activity
fBodyAccJerk-mean()-Y		Average value of fBodyAccJerk-mean()-Y for this subject while doing this activity
fBodyAccJerk-mean()-Z		Average value of fBodyAccJerk-mean()-Z for this subject while doing this activity
fBodyAccJerk-std()-X		Average value of fBodyAccJerk-std()-X for this subject while doing this activity
fBodyAccJerk-std()-Y		Average value of fBodyAccJerk-std()-Y for this subject while doing this activity
fBodyAccJerk-std()-Z		Average value of fBodyAccJerk-std()-Z for this subject while doing this activity
fBodyAccJerk-meanFreq()-X		Average value of fBodyAccJerk-meanFreq()-X for this subject while doing this activity
fBodyAccJerk-meanFreq()-Y		Average value of fBodyAccJerk-meanFreq()-Y for this subject while doing this activity
fBodyAccJerk-meanFreq()-Z		Average value of fBodyAccJerk-meanFreq()-Z for this subject while doing this activity
fBodyGyro-mean()-X		Average value of fBodyGyro-mean()-X for this subject while doing this activity
fBodyGyro-mean()-Y		Average value of fBodyGyro-mean()-Y for this subject while doing this activity
fBodyGyro-mean()-Z		Average value of fBodyGyro-mean()-Z for this subject while doing this activity
fBodyGyro-std()-X		Average value of fBodyGyro-std()-X for this subject while doing this activity
fBodyGyro-std()-Y		Average value of fBodyGyro-std()-Y for this subject while doing this activity
fBodyGyro-std()-Z		Average value of fBodyGyro-std()-Z for this subject while doing this activity
fBodyGyro-meanFreq()-X		Average value of fBodyGyro-meanFreq()-X for this subject while doing this activity
fBodyGyro-meanFreq()-Y		Average value of fBodyGyro-meanFreq()-Y for this subject while doing this activity
fBodyGyro-meanFreq()-Z		Average value of fBodyGyro-meanFreq()-Z for this subject while doing this activity
fBodyAccMag-mean()		Average value of fBodyAccMag-mean() for this subject while doing this activity
fBodyAccMag-std()		Average value of fBodyAccMag-std() for this subject while doing this activity
fBodyAccMag-meanFreq()		Average value of fBodyAccMag-meanFreq() for this subject while doing this activity
fBodyBodyAccJerkMag-mean()		Average value of fBodyBodyAccJerkMag-mean() for this subject while doing this activity
fBodyBodyAccJerkMag-std()		Average value of fBodyBodyAccJerkMag-std() for this subject while doing this activity
fBodyBodyAccJerkMag-meanFreq()		Average value of fBodyBodyAccJerkMag-meanFreq() for this subject while doing this activity
fBodyBodyGyroMag-mean()		Average value of fBodyBodyGyroMag-mean() for this subject while doing this activity
fBodyBodyGyroMag-std()		Average value of fBodyBodyGyroMag-std() for this subject while doing this activity
fBodyBodyGyroMag-meanFreq()		Average value of fBodyBodyGyroMag-meanFreq() for this subject while doing this activity
fBodyBodyGyroJerkMag-mean()		Average value of fBodyBodyGyroJerkMag-mean() for this subject while doing this activity
fBodyBodyGyroJerkMag-std()		Average value of fBodyBodyGyroJerkMag-std() for this subject while doing this activity
fBodyBodyGyroJerkMag-meanFreq()		Average value of fBodyBodyGyroJerkMag-meanFreq() for this subject while doing this activity
angle(tBodyAccMean,gravity)		Average value of angle(tBodyAccMean,gravity) for this subject while doing this activity
angle(tBodyAccJerkMean),gravityMean)		Average value of angle(tBodyAccJerkMean),gravityMean) for this subject while doing this activity
angle(tBodyGyroMean,gravityMean)		Average value of angle(tBodyGyroMean,gravityMean) for this subject while doing this activity
angle(tBodyGyroJerkMean,gravityMean)		Average value of angle(tBodyGyroJerkMean,gravityMean) for this subject while doing this activity
angle(X,gravityMean)		Average value of angle(X,gravityMean) for this subject while doing this activity
angle(Y,gravityMean)		Average value of angle(Y,gravityMean) for this subject while doing this activity
angle(Z,gravityMean)		Average value of angle(Z,gravityMean) for this subject while doing this activity


===========================

