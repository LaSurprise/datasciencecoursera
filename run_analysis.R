run_analysis <- function() {
  
  ## set work directory
  setwd("C:/Data Scientist/3-Getting and Cleaning Data/Project/UCI HAR Dataset")
  
  ## read data
  activity_labels <- read.table("./activity_labels.txt", quote="\"")
  features <- read.table("./features.txt", quote="\"")
  subject_train <- read.table("./train/subject_train.txt", quote="\"")
  y_train <- read.table("./train/y_train.txt", quote="\"")
  X_train <- read.table("./train/X_train.txt", quote="\"")
  subject_test <- read.table("./test/subject_test.txt", quote="\"")
  y_test <- read.table("./test/y_test.txt", quote="\"")
  X_test <- read.table("./test/X_test.txt", quote="\"")
  
  ## remove special caracter from features names
  library("stringr")
  features[,]$V2 <- as.character(features[,]$V2)
  for (i in 1:length(features$V1))
  {
    features[i,]$V2 <-  gsub(",","",features[i,]$V2) 
    features[i,]$V2 <-  gsub("-","_",features[i,]$V2) 
    features[i,]$V2 <-  gsub("[(]","",features[i,]$V2) 
    features[i,]$V2 <-  gsub("[)]","",features[i,]$V2) 
  }
  
  ## merge train and test to create one data set
  train_test <- data.frame(rbind(X_train,X_test))
  
  ## identify mean and standard deviation columns
  columns <- vector("character", length = length(features$V1) )
  collabels <- vector("character", length = length(features$V1) )
  for(i in 1:length(features$V1) )
  {
    m <- str_extract(features[i,]$V2,"mean")
    M <- str_extract(features[i,]$V2,"Mean")
    s <- str_extract(features[i,]$V2,"std")
    if (!is.na(m) | !is.na(M) | !is.na(s)) 
      {
        columns[i] <- paste("V", i, sep="")
        collabels[i] <- as.character(features[i,]$V2)
      }
  }
  
  ## select mean and standard deviation columns
  columns <- columns[columns[]!=""]
  collabels <- collabels[collabels[]!=""]
  
  ## merge activities and subjects
  activity_num <- rbind(y_train,y_test)
  subject <- rbind(subject_train,subject_test)
  
  ## create a dataframe with activity, subject mean and standard deviation columns
  newdata <- data.frame(cbind(activity_num, subject, train_test[,columns[1]], train_test[,columns[2:length(columns)]]))
  names(newdata) <- c("activity_num", "subject", collabels[1:length(collabels)])
  
  ## merge with activity_labels to include labels
  newdata <- merge (newdata, activity_labels, by.x="activity_num", by.y="V1")
  names(newdata) <- c("activity_num", "subject", collabels[1:length(collabels)], "activity_label")
  
  ## create a second, independent tidy data set with the average of each variable for each activity 
  ## and each subject
    
  ## subset and create mean data by activity and subject
  ## activity_num==1
  newdata1 <- newdata[newdata$activity_num == 1,3:88]
  fact1 <- newdata[newdata$activity_num == 1,]$subject
  mean1 <- matrix("numeric", nrow = length(table(fact1)), ncol = length(columns))
  for (i in 1:length(columns)) mean1[,i] <- tapply(newdata1[,i], fact1, mean)
  fact1 <- cbind(rep(1,30),1:30)
  
  ## activity_num==2
  newdata2 <- newdata[newdata$activity_num == 2,3:88]
  fact2 <- newdata[newdata$activity_num == 2,]$subject
  mean2 <- matrix("numeric", nrow = length(table(fact2)), ncol = length(columns))
  for (i in 1:length(columns)) mean2[,i] <- tapply(newdata2[,i], fact2, mean)
  fact2 <- cbind(rep(2,30),1:30)
  
  ## activity_num==3
  newdata3 <- newdata[newdata$activity_num == 3,3:88]
  fact3 <- newdata[newdata$activity_num == 3,]$subject
  mean3 <- matrix("numeric", nrow = length(table(fact3)), ncol = length(columns))
  for (i in 1:length(columns)) mean3[,i] <- tapply(newdata3[,i], fact3, mean)
  fact3 <- cbind(rep(3,30),1:30)
  
  ## activity_num==4
  newdata4 <- newdata[newdata$activity_num == 4,3:88]
  fact4 <- newdata[newdata$activity_num == 4,]$subject
  mean4 <- matrix("numeric", nrow = length(table(fact4)), ncol = length(columns))
  for (i in 1:length(columns)) mean4[,i] <- tapply(newdata4[,i], fact4, mean)
  fact4 <- cbind(rep(4,30),1:30)
  
  ## activity_num==5
  newdata5 <- newdata[newdata$activity_num == 5,3:88]
  fact5 <- newdata[newdata$activity_num == 5,]$subject
  mean5 <- matrix("numeric", nrow = length(table(fact5)), ncol = length(columns))
  for (i in 1:length(columns)) mean5[,i] <- tapply(newdata5[,i], fact5, mean)
  fact5 <- cbind(rep(5,30),1:30)
  
  ## activity_num==6
  newdata6 <- newdata[newdata$activity_num == 6,3:88]
  fact6 <- newdata[newdata$activity_num == 6,]$subject
  mean6 <- matrix("numeric", nrow = length(table(fact6)), ncol = length(columns))
  for (i in 1:length(columns)) mean6[,i] <- tapply(newdata6[,i], fact6, mean)
  fact6 <- cbind(rep(6,30),1:30)
  
  ## merge subsets 
  data_mean <- rbind(mean1, mean2, mean3, mean4, mean5, mean6)
  fact <- rbind(fact1, fact2, fact3, fact4, fact5, fact6)
  newdata <- merge(data.frame(cbind(fact, data_mean)), activity_labels, by.x="X1", by.y="V1")
  names(newdata) <- c("activity_num", "subject", collabels[1:length(collabels)], "activity_label")
  
  ## create file with tidy data
  write.csv(newdata,"tidy_data.txt",row.names = FALSE)
  
  ## create file with variables
  write.csv(names(tidy_data),"variables.txt",row.names = FALSE)
}
