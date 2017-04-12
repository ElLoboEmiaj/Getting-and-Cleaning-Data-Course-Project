#step 0: checking file-->Download and unzip the dataset:

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

# Unzip dataSet to /data directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")


library(reshape2)

#step 1 reading activity labels and features  

##reading activity labels
activity_labels = read.table('./data/UCI HAR Dataset/activity_labels.txt')
activity_labels[,2] <- as.character(activity_labels[,2])

##reading features vector:
features <- read.table('./data/UCI HAR Dataset/features.txt')
features[,2] <- as.character(features[,2])

#step 2: extract mean and standard deviation + cleaning 

mean_std <- grep(".*mean.*|.*std.*", features[,2])
mean_std.names <- features[mean_std,2]
mean_std.names <- gsub('[-()]', '', mean_std.names)


#step3: reading files and loading data sets

##reading tests tables
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")[mean_std]
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")


##reading train tables
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")[mean_std]
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")


##loading data sets
test <- cbind(subject_test,y_test,x_test)
train<-cbind(subject_train,y_train, x_train)


#Step 4: Merging all data we need and giving names to the columns
myData <- rbind(train, test)
colnames(myData) <- c("subject", "activity", mean_std.names)


#step 5: activities & subjects into factors
myData$activity <- factor(myData$activity, levels = activity_labels[,1], labels = activity_labels[,2])
myData$subject <- as.factor(myData$subject)


#step 6:melting all data
D_melt<- melt(myData, id = c("subject", "activity"))


#step 7: Creating a second independent tidy data set
DS_tidy<- dcast(D_melt, subject + activity ~ variable, mean)


#Step 8: writing
write.table(DS_tidy, "DS_tidy.txt", row.names = FALSE, quote = FALSE)






