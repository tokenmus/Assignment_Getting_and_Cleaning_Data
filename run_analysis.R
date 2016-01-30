
# R code for completing final project in Coursera Getting and Cleaning Data course
# This code was created by Pieter Musters, January 2016
# 
# This project downloads a dataset from an accelerometer and reorganises it
# Full description of purpose of this code is part of the Readme.cmd file
#
# Steps in this code
# 1 Downloading the data
# 2 Merges the training and the test sets to create one data set.
# 3 Extracts only the measurements on the mean and standard deviation for each measurement
# 4 Uses descriptive activity names to name the activities in the data set
# 5 Appropriately labels the data set with descriptive variable names.
# 6 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# 7 Write data to the dataset Samsung_averaged_dataset.txt


# STEP 1 Downloading the data, unzip it and read the files

library(plyr)

url<-"http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,destfile="dataset.zip", method="curl")
unzip("dataset.zip",overwrite=TRUE)

trainxfile<-"UCI HAR Dataset/train/X_train.txt"
trainyfile<-"UCI HAR Dataset/train/y_train.txt"
trainsubjectfile<-"UCI HAR Dataset/train/subject_train.txt"

testxfile<-"UCI HAR Dataset/test/X_test.txt"
testyfile<-"UCI HAR Dataset/test/y_test.txt"
testsubjectfile<-"UCI HAR Dataset/test/subject_test.txt"

activitylabelsfile<-"UCI HAR Dataset/activity_labels.txt"
featuresfile<-"UCI HAR Dataset/features.txt"

trainx<-read.table(trainxfile)
trainy<-read.table(trainyfile)
trainsubject<-read.table(trainsubjectfile)

testx<-read.table(testxfile)
testy<-read.table(testyfile)
testsubject<-read.table(testsubjectfile)

activitylabels<-read.table(activitylabelsfile)
colnames(activitylabels)<-c("ActivityCode","Activity")
features<-read.table(featuresfile)

# STEP 2 Merges the training and the test sets to create one data set.

datax<-rbind(trainx,testx)
datay<-rbind(trainy,testy)
colnames(datay)<-c("ActivityCode")
subject<-rbind(trainsubject,testsubject)
colnames(subject)<-c("ID")

# STEP 3 Extracts only the measurements on the mean and standard deviation for each measurement

select<-grep("[Mm]ean|std",features$V2)
datax<-datax[,select]

# STEP 4 Uses descriptive activity names to name the activities in the data set

datay<-cbind(1:dim(datay)[1],datay)
colnames(datay)<-c("Index","ActivityCode")
dataynamed<-merge(datay,activitylabels)
dataynamed<-dataynamed[order(dataynamed$Index),]

# STEP 5 Appropriately labels the data set with descriptive variable names.

colnames(datax)<-features$V2[select]

dataset<-cbind(subject,dataynamed,datax)

# STEP 6 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# use aggregate or ddply from library(plyr)

dataset_averaged<-ddply(dataset, .(ID, Activity), .fun=function(x){ colMeans(x[,-c(1:4)]) })


# STEP 7 Write dataset to file Samsung_averaged_data.txt

write.table(dataset_averaged, 'Samsung_averaged_data.txt', row.names = F)
