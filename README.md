README.md

This README file explains how the script run_analysis.R works, the working environment and the input data it requires.

The run_analysis.R undertakes the following activities to produce tidy_data.txt from the data available at the followiong URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

1. It merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names (details are specified in CodeBook.md)
5. Creates a second, independent tidy_data.txt data set with the average of each variable for each activity and each subject.

To execute run_analysis.R the perform the following steps.

1. Pre-requisite - Download theinput data in zip file from the following URL:
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
2. Unzip the above zip file. Copy run_analysis.R in its root directory, by default this director is called as "UCI HAR Dataset" 
3. In the root directory the following files in original (unedited) content and format are needed by run_analysis.R
      i)   test/x_test.txt
      ii)  test/y_test.txt
      iii) test/subject_test.txt
      iv)  train/x_train.txt
      v)   train/y_train.txt
      vi)  train/subject_train.txt
      vii) features.txt
      
NOTE: The script will only run on Windows OS, if you wish to run on the other system then update the above directory paths compatible with your operating system.

Execute run_analysis.R in the root directory called "UCI HAR Dataset" or whatever name you choose for the same. run_analysis.R will produce "tidy_data.txt" in the root directory.  

For details informtion on the content and format please refer to CodeBook.md 
