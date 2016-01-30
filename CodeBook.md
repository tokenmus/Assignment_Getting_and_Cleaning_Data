
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
=====================================

a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called 
