# Extract the features that are having mean and standar deviation values
features_df <- read.table("UCI HAR Dataset\\features.txt", header = FALSE, stringsAsFactors = FALSE)
extractedfeatures <- features_df[(grepl("std|mean[^a-zA-Z]", features_df$V2)), ]


# Create a meaningful names for the features that will represent average value fore each subject activity
extractedfeatures$V3 <- sapply( extractedfeatures$V2, paste0, arg1 = "-Avg-For", "-EachSubjectActivity")

test_df <- read.table("UCI HAR Dataset\\test\\x_test.txt", header = FALSE)
test_a_df <- read.table("UCI HAR Dataset\\test\\y_test.txt", header = FALSE)
test_s_df <- read.table("UCI HAR Dataset\\test\\subject_test.txt", header = FALSE)

train_df <- read.table("UCI HAR Dataset\\train\\x_train.txt", header = FALSE)
train_a_df <- read.table("UCI HAR Dataset\\train\\y_train.txt", header = FALSE)
train_s_df <- read.table("UCI HAR Dataset\\train\\subject_train.txt", header = FALSE)

test_data <- cbind(test_s_df, test_a_df, test_df)
train_data <- cbind(train_s_df, train_a_df, train_df)

combined_data <- rbind(test_data, train_data)
filtered_data <-  combined_data[, c(1, 2, extractedfeatures[, 1])]

# Remove the objects that are not needed to free-up memory
rm(train_data, train_df, train_s_df, train_a_df, test_data, test_df, test_a_df, test_s_df, combined_data, features_df )

# Name the columns with descriptive names

new_columns <- c("SubjectId", "Activities")
tidy_data_column_names <- c(new_columns, extractedfeatures[, 3])
colnames(filtered_data) <- c(tidy_data_column_names)


# Calculate average of each activity for each subject for each variable

grouped_data <- split(filtered_data, filtered_data$SubjectId)
tidy_data <- filtered_data[0,]

for(i in 1:length(grouped_data)){
  subject_data <- split(grouped_data[[i]], grouped_data[[i]][[2]])
  for(j in 1:length(subject_data)){
    tidy_data[nrow(tidy_data) + 1, ] <- c( i, unique(subject_data[[j]][2]), colMeans(subject_data[[j]][, -c(1, 2)]))
  }
}

write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)