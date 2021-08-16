
list.files(path = ".", pattern = NULL, all.files = T,
           full.names = FALSE, recursive = T,
           ignore.case = FALSE, include.dirs = F, no.. = FALSE)
# all.files T: 显示当前目录下所有文件，包括文件夹等
# recursive T：遍历，显示内部文件夹里的所有文件
# include.dirs T：Should subdirectory names be included in recursive listings?
# （一般只有recursive = T 才有用）

## 1. load sets
# test
test <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
test_label <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
# training
training <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
training_label <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
training_subject <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")

## 2. merge sets
features <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")
test1 <- cbind(test_label, test_subject, test)
colnames(test1) <- c("activity", "subject", features[,2])
training1 <- cbind(training_label, training_subject, training)
colnames(training1) <- c("activity", "subject", features[,2])
merged <- rbind(test1, training1)

## 3. Extracts only the measurements on the mean and standard deviation for each measurement. 
selected <- grep("mean\\(\\)|std\\(\\)", names(merged)) 
final <- merged[,c(1,2,selected)]

## 4. Uses descriptive activity names to name the activities in the data set
activityname <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
final$activity <- factor(final$activity, levels = activityname[,1], labels = activityname[,2])

## 5. Appropriately labels the data set with descriptive variable names. 
names(final) <- gsub("\\()", "", names(final))
names(final) <- gsub("-", "_", names(final))

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
tidydata <- final %>% 
      group_by(activity, subject) %>%
      summarize(
            across(1:66, mean)
            )

# save the tidy data
write.table(tidydata, file = "tidydata.txt",row.name=FALSE)
