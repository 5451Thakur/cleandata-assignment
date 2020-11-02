README.md

This README file explains how the script run_analysis.R works, the working environment and the input data it requires.

The run_analysis.R undertakes the following activities to produce tidy_data.txt from the data available at the followiong URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

1. It merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names (details are specified in CodeBook.md)
5. Creates a second, independent tidy_data.txt data set with the average of each variable for each activity and each subject.

To execute run_analysis.R the perform the following steps.

1. Pre-requisite - You will need to copy Samsung data downloaded and saved in your current working directory:
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
2. Unzip the above zip file in your current working directory. By default this director is called as "UCI HAR Dataset" 
3. In the "UCI HAR Dataset" directory the following files are needed by run_analysis.R
      i)   test/x_test.txt
      ii)  test/y_test.txt
      iii) test/subject_test.txt
      iv)  train/x_train.txt
      v)   train/y_train.txt
      vi)  train/subject_train.txt
      vii) features.txt
      
NOTE: The script will only run on Windows OS, if you wish to run on the other system then update the above directory paths compatible with your operating system.

Execute run_analysis.R in the current working directory containing "UCI HAR Dataset". The run_analysis.R will produce "tidy_data.txt" in the current working directory.  

For details informtion on the content and format please refer to CodeBook.md 
