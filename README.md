# cleandata-assignment
This README file explains how the scripts run_analysis.R works, the working environment and the input data it requires.

To execute run_analysis.R the perform the following pre-requisites.
1. Download the in the input data zip file from the following URL:
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
2. Unzip the above zip file,  Copy run_analysis.R in its root directory, by default this director is called as "UCI HAR Dataset"
3. In the root directory the following files in original (unedited) content and format are needed by run_analysis.R
      i)   test/x_test.txt
      ii)  test/y_test.txt
      iii) test/subject_test.txt
      iv)  train/x_train.txt
      v)   train/y_train.txt
      vi)  train/subject_train.txt
      vii) features.txt
      
      NOTE: The script automatically detects the host systems between MACOS and Windows OS and adjust the directory path accordingly.
      
 Execute run_analysis.R in the root directory called "UCI HAR Dataset" or whatever name you choose for the same.
 
 run_analysis.R will produce "tidy_data.txt" in the root directory.  For details informtion on the content and format please refer to CodeBook.md 
