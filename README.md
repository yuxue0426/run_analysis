# run_analysis
Getting and Cleaning Data - Project
About the project and task

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
What the script "run_analysis.R" does:

The script automatically run with the "UCI HAR Dataset/" directory parameter.

#what the analysis files did#

Step 1 - You need download the raw datasource and extract. You need pass the directory name like this "UCI HAR Dataset/".

Step 2 - Read and combine subjects.

Step 3 - Read, combine and decode activity labels.

Step 4 - Read, combine and set column names for subjects.

Step 5 - Combine the whole datasets.

Step 6 - Extract from dataset only the required columns like "-mean()" and "-std()".

Step 7 - Compute the means, grouped by activity/subject.

Step 8 - Writing the result to ";" separated txt file (average_of_each_variable_for_each_activity_and_each_subject.txt).
