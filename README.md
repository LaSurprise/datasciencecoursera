#Cousera Getting and Cleaning Data Project : Script

## Purpose of the project
To demonstrate our ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis

### Data organization and localization

* Working directory : "C:\Data Scientist\3-Getting and Cleaning Data\Project\UCI HAR Dataset"
* Test data directory : "C:\Data Scientist\3-Getting and Cleaning Data\Project\UCI HAR Dataset\test"
* Train data directory : "C:\Data Scientist\3-Getting and Cleaning Data\Project\UCI HAR Dataset\train"
* Activity and features directory : Working directory
* run_analysis.R, tidy_data.txt and variables.txt directory : Working directory

### How the script works

 * Set work directory
 * Read data
 * Remove special caracters from features names
 * Merge train and test data to create one data set
 * Identify mean and standard deviation columns
 * Select mean and standard deviation columns
 * Merge train and test activities. Merge train and test subjects
 * Create a dataframe with activity, subject, mean and standard deviation columns
 * Merge with activity_labels to include labels
 * Subset and create mean data by activity and subject
 * Merge all subsets 
 * Create a file with tidy data
 * Create a file with variables names

================================================================================================================================================