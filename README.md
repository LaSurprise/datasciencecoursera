##Cousera Getting and Cleaning Data Project : Script

###Purpose of the project
To demonstrate our ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis

###Data organization and localization

* Working directory : "C:\Data Scientist\3-Getting and Cleaning Data\Project\UCI HAR Dataset"
* Test data directory : "C:\Data Scientist\3-Getting and Cleaning Data\Project\UCI HAR Dataset\test"
* Train data directory : "C:\Data Scientist\3-Getting and Cleaning Data\Project\UCI HAR Dataset\train"
* Activity and features directory : Working directory
* run_analysis.R, tidy_data.txt and variables.txt directory : Working directory

###How the script works

  1. Set work directory
  2. Read data
  3. Remove special caracters from features names
  4. Merge train and test data to create one data set
  5. Identify mean and standard deviation columns
  6. Select mean and standard deviation columns
  7. Merge train and test activities. Merge train and test subjects
  8. Create a dataframe with activity, subject, mean and standard deviation columns
  9. Merge with activity_labels to include labels
 10. Subset and create mean data by activity and subject
 11. Merge all subsets 
 12. Create a file with tidy data
 13. Create a file with variables names   



