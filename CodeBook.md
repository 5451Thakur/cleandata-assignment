
Introduction

This CodeBook describes the data in tidy_data.txt produced by run_analysis.R from the base data available at Ref[1].  The data provided in tidy_data.txt consists of 68 fields combining multiple data files available at Ref[1]. 
The run_analysis.R converts the Ref[1] data into tidy_data.txt in a comma-separated file format.

Data Fields (tidy_data.txt)

1.	SubjectID (Numeric) - This field provides identity number of each participating subject.  
2.	Activities - This data fields provides a description of activities performed by each subject.  The following activities are recorded for each subject.
(a)	"walking" 
(b)	"walking upstairs" 
(c)	"walking downstairs"
(d)	"sitting"
(e)	"standing" 
(f)	"laying"

3. 	The fields 3 through 68 consists of features selected from signal measurement, the details for the same can be found at Ref[2] .

    The original data Ref[1] features come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
    Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
    A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
    These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

      tBodyAcc-XYZ
      tGravityAcc-XYZ
      tBodyAccJerk-XYZ
      tBodyGyro-XYZ
      tBodyGyroJerk-XYZ
      tBodyAccMag
      tGravityAccMag
      tBodyAccJerkMag
      tBodyGyroMag
      tBodyGyroJerkMag
      fBodyAcc-XYZ
      fBodyAccJerk-XYZ
      fBodyGyro-XYZ
      fBodyAccMag
      fBodyAccJerkMag
      fBodyGyroMag
      fBodyGyroJerkMag

      The tidy_data.txt provides sub-set of data consisting of only of two variables mean(): Mean Value and std(): Standard Deviation estimated from the signals described above. This data sub-set consisting of variables (mean and standard deviation) is then averaged for each variable for each activity and each subject to produce the following data fields in tidy_data.txt

        (3) tBodyAcc-mean()-X-Avg-For-EachSubjectActivity
        (4) tBodyAcc-mean()-Y-Avg-For-EachSubjectActivity
        (5) tBodyAcc-mean()-Z-Avg-For-EachSubjectActivity
        (6) tBodyAcc-std()-X-Avg-For-EachSubjectActivity
        (7) tBodyAcc-std()-Y-Avg-For-EachSubjectActivity
        (8) tBodyAcc-std()-Z-Avg-For-EachSubjectActivity
        (9) tGravityAcc-mean()-X-Avg-For-EachSubjectActivity
        (10) tGravityAcc-mean()-Y-Avg-For-EachSubjectActivity
        (11) tGravityAcc-mean()-Z-Avg-For-EachSubjectActivity
        (12) tGravityAcc-std()-X-Avg-For-EachSubjectActivity
        (13) tGravityAcc-std()-Y-Avg-For-EachSubjectActivity
        (14) tGravityAcc-std()-Z-Avg-For-EachSubjectActivity
        (15) tBodyAccJerk-mean()-X-Avg-For-EachSubjectActivity
        (16) tBodyAccJerk-mean()-Y-Avg-For-EachSubjectActivity
        (17) tBodyAccJerk-mean()-Z-Avg-For-EachSubjectActivity
        (18) tBodyAccJerk-std()-X-Avg-For-EachSubjectActivity
        (19) tBodyAccJerk-std()-Y-Avg-For-EachSubjectActivity
        (20) tBodyAccJerk-std()-Z-Avg-For-EachSubjectActivity
        (21) tBodyGyro-mean()-X-Avg-For-EachSubjectActivity
        (22) tBodyGyro-mean()-Y-Avg-For-EachSubjectActivity
        (23) tBodyGyro-mean()-Z-Avg-For-EachSubjectActivity
        (24) tBodyGyro-std()-X-Avg-For-EachSubjectActivity
        (25) tBodyGyro-std()-Y-Avg-For-EachSubjectActivity
        (26) tBodyGyro-std()-Z-Avg-For-EachSubjectActivity
        (27) tBodyGyroJerk-mean()-X-Avg-For-EachSubjectActivity
        (28) tBodyGyroJerk-mean()-Y-Avg-For-EachSubjectActivity
        (29) tBodyGyroJerk-mean()-Z-Avg-For-EachSubjectActivity
        (30) tBodyGyroJerk-std()-X-Avg-For-EachSubjectActivity
        (31) tBodyGyroJerk-std()-Y-Avg-For-EachSubjectActivity
        (32) tBodyGyroJerk-std()-Z-Avg-For-EachSubjectActivity
        (33) tBodyAccMag-mean()-Avg-For-EachSubjectActivity
        (34) tBodyAccMag-std()-Avg-For-EachSubjectActivity
        (35) tGravityAccMag-mean()-Avg-For-EachSubjectActivity
        (36) tGravityAccMag-std()-Avg-For-EachSubjectActivity
        (37) tBodyAccJerkMag-mean()-Avg-For-EachSubjectActivity
        (38) tBodyAccJerkMag-std()-Avg-For-EachSubjectActivity
        (39) tBodyGyroMag-mean()-Avg-For-EachSubjectActivity
        (40) tBodyGyroMag-std()-Avg-For-EachSubjectActivity
        (41) tBodyGyroJerkMag-mean()-Avg-For-EachSubjectActivity
        (42) tBodyGyroJerkMag-std()-Avg-For-EachSubjectActivity
        (43) fBodyAcc-mean()-X-Avg-For-EachSubjectActivity
        (44) fBodyAcc-mean()-Y-Avg-For-EachSubjectActivity
        (45) fBodyAcc-mean()-Z-Avg-For-EachSubjectActivity
        (46) fBodyAcc-std()-X-Avg-For-EachSubjectActivity
        (47) fBodyAcc-std()-Y-Avg-For-EachSubjectActivity
        (48) fBodyAcc-std()-Z-Avg-For-EachSubjectActivity
        (49) fBodyAccJerk-mean()-X-Avg-For-EachSubjectActivity
        (50) fBodyAccJerk-mean()-Y-Avg-For-EachSubjectActivity
        (51) fBodyAccJerk-mean()-Z-Avg-For-EachSubjectActivity
        (52) fBodyAccJerk-std()-X-Avg-For-EachSubjectActivity
        (53) fBodyAccJerk-std()-Y-Avg-For-EachSubjectActivity
        (54) fBodyAccJerk-std()-Z-Avg-For-EachSubjectActivity
        (55) fBodyGyro-mean()-X-Avg-For-EachSubjectActivity
        (56) fBodyGyro-mean()-Y-Avg-For-EachSubjectActivity
        (57) fBodyGyro-mean()-Z-Avg-For-EachSubjectActivity
        (58) fBodyGyro-std()-X-Avg-For-EachSubjectActivity
        (59) fBodyGyro-std()-Y-Avg-For-EachSubjectActivity
        (60) fBodyGyro-std()-Z-Avg-For-EachSubjectActivity
        (61) fBodyAccMag-mean()-Avg-For-EachSubjectActivity
        (62) fBodyAccMag-std()-Avg-For-EachSubjectActivity
        (63) fBodyBodyAccJerkMag-mean()-Avg-For-EachSubjectActivity
        (64) fBodyBodyAccJerkMag-std()-Avg-For-EachSubjectActivity
        (65) fBodyBodyGyroMag-mean()-Avg-For-EachSubjectActivity
        (66) fBodyBodyGyroMag-std()-Avg-For-EachSubjectActivity
        (67) fBodyBodyGyroJerkMag-mean()-Avg-For-EachSubjectActivity
        (68) fBodyBodyGyroJerkMag-std()-Avg-For-EachSubjectActivity

The data for other variables-features (signal) combination is available at links provided below in the reference section.
References 
[1]  The source database URL https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
[2] A full description of data is available at the site from where the data was obtained http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

