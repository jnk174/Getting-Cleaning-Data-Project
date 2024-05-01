# Introduction
The UCI Human Activity Recognition (HAR) Dataset contains accelerometer and gyroscope sensor data collected from smartphones during various human activities. The purpose of this project is to demonstrate data wrangling, cleaning, and summarization skills. The dataset includes observations, activity labels, and subject identifiers.

# Variables
1. subject: Numeric identifier for each individual participant (subject).
2. activity: Descriptive label for the activity performed (e.g., walking, sitting, standing).
3. Other Variables: These represent the mean or standard deviation of various sensor measurements (e.g., acceleration, angular velocity) in different directions (X, Y, Z).

# Data Transformation Steps
1. Merged the training and test datasets.
2. Assigned appropriate column headers to all imported files.
3. Matched activity descriptions with activity numbers.
4. Extracted only the columns containing “mean” for average or “std” for standard deviataion in the column name.
5. Change the label variavles such as "t" to "TimeDomain" and "f" to "FrequencyDomain".

# Tidy Data Format
The final tidy dataset contains one row per observation, with columns representing subject, activity, and sensor measurements.

# Total vriables
[1] "subject"                                  "activity"                                 "TimeDomain_BodyAcc-mean-X"               
[4] "TimeDomain_BodyAcc-mean-Y"                "TimeDomain_BodyAcc-mean-Z"                "TimeDomain_BodyAcc-std-X"                
[7] "TimeDomain_BodyAcc-std-Y"                 "TimeDomain_BodyAcc-std-Z"                 "TimeDomain_GravityAcc-mean-X"            
[10] "TimeDomain_GravityAcc-mean-Y"             "TimeDomain_GravityAcc-mean-Z"             "TimeDomain_GravityAcc-std-X"             
[13] "TimeDomain_GravityAcc-std-Y"              "TimeDomain_GravityAcc-std-Z"              "TimeDomain_BodyAccJerk-mean-X"           
[16] "TimeDomain_BodyAccJerk-mean-Y"            "TimeDomain_BodyAccJerk-mean-Z"            "TimeDomain_BodyAccJerk-std-X"            
[19] "TimeDomain_BodyAccJerk-std-Y"             "TimeDomain_BodyAccJerk-std-Z"             "TimeDomain_BodyGyro-mean-X"              
[22] "TimeDomain_BodyGyro-mean-Y"               "TimeDomain_BodyGyro-mean-Z"               "TimeDomain_BodyGyro-std-X"               
[25] "TimeDomain_BodyGyro-std-Y"                "TimeDomain_BodyGyro-std-Z"                "TimeDomain_BodyGyroJerk-mean-X"          
[28] "TimeDomain_BodyGyroJerk-mean-Y"           "TimeDomain_BodyGyroJerk-mean-Z"           "TimeDomain_BodyGyroJerk-std-X"           
[31] "TimeDomain_BodyGyroJerk-std-Y"            "TimeDomain_BodyGyroJerk-std-Z"            "TimeDomain_BodyAccMag-mean"              
[34] "TimeDomain_BodyAccMag-std"                "TimeDomain_GravityAccMag-mean"            "TimeDomain_GravityAccMag-std"            
[37] "TimeDomain_BodyAccJerkMag-mean"           "TimeDomain_BodyAccJerkMag-std"            "TimeDomain_BodyGyroMag-mean"             
[40] "TimeDomain_BodyGyroMag-std"               "TimeDomain_BodyGyroJerkMag-mean"          "TimeDomain_BodyGyroJerkMag-std"          
[43] "FrequencyDomain_BodyAcc-mean-X"           "FrequencyDomain_BodyAcc-mean-Y"           "FrequencyDomain_BodyAcc-mean-Z"          
[46] "FrequencyDomain_BodyAcc-std-X"            "FrequencyDomain_BodyAcc-std-Y"            "FrequencyDomain_BodyAcc-std-Z"           
[49] "FrequencyDomain_BodyAccJerk-mean-X"       "FrequencyDomain_BodyAccJerk-mean-Y"       "FrequencyDomain_BodyAccJerk-mean-Z"      
[52] "FrequencyDomain_BodyAccJerk-std-X"        "FrequencyDomain_BodyAccJerk-std-Y"        "FrequencyDomain_BodyAccJerk-std-Z"       
[55] "FrequencyDomain_BodyGyro-mean-X"          "FrequencyDomain_BodyGyro-mean-Y"          "FrequencyDomain_BodyGyro-mean-Z"         
[58] "FrequencyDomain_BodyGyro-std-X"           "FrequencyDomain_BodyGyro-std-Y"           "FrequencyDomain_BodyGyro-std-Z"          
[61] "FrequencyDomain_BodyAccMag-mean"          "FrequencyDomain_BodyAccMag-std"           "FrequencyDomain_BodyBodyAccJerkMag-mean" 
[64] "FrequencyDomain_BodyBodyAccJerkMag-std"   "FrequencyDomain_BodyBodyGyroMag-mean"     "FrequencyDomain_BodyBodyGyroMag-std"     
[67] "FrequencyDomain_BodyBodyGyroJerkMag-mean" "FrequencyDomain_BodyBodyGyroJerkMag-std" 