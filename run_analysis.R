# 0. Download the data set.
## 0.0 load libraries
library(tidyverse)

## 0.1 set working directory
setwd("D:/Code_Repo/R/JohnsHopkins_Data Science/03 Getting and Cleaning Data/Getting-Cleaning-Data-Project")

## 0.2 download and upzip data set
dataname <- "dataset.zip"
dataurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if (!file.exists(dataname)){
    download.file(dataurl, dataname)
}

if (!file.exists("UCI HAR Dataset")){
    unzip(dataname)
}

## 0.3 read data files
features <- as_tibble(read.table("./UCI HAR Dataset/features.txt"));features
activity_labels <- as_tibble(read.table("./UCI HAR Dataset/activity_labels.txt"));activity_labels
x_train <- as_tibble(read.table("./UCI HAR Dataset/train/X_train.txt"));x_train
y_train <- as_tibble(read.table("./UCI HAR Dataset/train/y_train.txt"));y_train
subject_train <- as_tibble(read.table("./UCI HAR Dataset/train/subject_train.txt"));subject_train
x_test <- as_tibble(read.table("./UCI HAR Dataset/test/X_test.txt"));x_test
y_test <- as_tibble(read.table("./UCI HAR Dataset/test/y_test.txt"));y_test
subject_test <- as_tibble(read.table("./UCI HAR Dataset/test/subject_test.txt"));subject_test

# 1. Merges the training and the test sets to create one data set.
merged_data <- bind_rows(x_train, x_test)
merged_labels <- bind_rows(y_train, y_test)
merged_subject <- bind_rows(subject_train, subject_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
mean_std_cols <- grep("mean\\(\\)|std\\(\\)", features$V2);mean_std_cols
extracted_data <- merged_data[, mean_std_cols];extracted_data

# 3. Uses descriptive activity names to name the activities in the data set
activity_names <- activity_labels$V2[merged_labels$V1];activity_names

# 4. Appropriately labels the data set with descriptive variable names. 
colnames(extracted_data) <- gsub("\\(|\\)", "", features$V2[mean_std_cols])
colnames(extracted_data) <- gsub("^t", "TimeDomain_", colnames(extracted_data))
colnames(extracted_data) <- gsub("^f", "FrequencyDomain_", colnames(extracted_data))
extracted_data <- extracted_data %>%
    mutate(activity = factor(activity_names, levels = activity_labels$V2), 
           subject = merged_subject$V1) %>% 
    relocate(c(subject,activity));extracted_data

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy_data <- extracted_data %>%
    group_by(subject, activity) %>%
    summarise_all(mean);tidy_data

# Save tidy data to a file 
write.table(tidy_data, "HAR_tidy_dataset.txt", row.names = FALSE)
