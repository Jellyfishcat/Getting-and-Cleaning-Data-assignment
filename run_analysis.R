# data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## 1. check workdir and pathways to all files
list.files(path = ".", pattern = NULL, all.files = T,
           full.names = FALSE, recursive = T,
           ignore.case = FALSE, include.dirs = F, no.. = FALSE)

## 2. load sets
# test
test <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
test_label <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
# training
training <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
training_label <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
training_subject <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")

## 3. name columns and merge sets
features <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")
test1 <- cbind(test_label, test_subject, test)
colnames(test1) <- c("activity", "subject", features[,2])
training1 <- cbind(training_label, training_subject, training)
colnames(training1) <- c("activity", "subject", features[,2])
merged <- rbind(test1, training1)

## 4. Extracts only the measurements on the mean and standard deviation for each measurement. 
selected <- grep(".*Mean.*|.*Std.*", names(merged), ignore.case=TRUE) 
final <- merged[,c(1,2,selected)]

## 5. Uses descriptive activity names to name the activities in the data set
activityname <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
final$activity <- factor(final$activity, levels = activityname[,1], labels = activityname[,2])

## 6. Appropriately labels the data set with descriptive variable names. 
names(final) <- gsub("\\()", "", names(final))
names(final) <- gsub("-", "_", names(final)) 
names(final) <- gsub(",","_",names(final))
# underlines are valid in R, and i still think some separaters are neccessary. "tBodyAcc_mean_Y" is much clearer than "tBodyAccmeanY"
# f-frequency/t-time is explained in CodeBook.

## 7. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
tidydata <- final %>% 
      group_by(activity, subject) %>%
      summarize(
            across(1:86, mean)
            )
# save the tidy data
write.table(tidydata, file = "tidydata.txt",row.name = FALSE)
