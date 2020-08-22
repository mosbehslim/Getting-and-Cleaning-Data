# Step 1- Read train and test data

train <- read.table("./UCI HAR Dataset/train/X_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt")

# Step 2- Read futures, label activity and ID subjects from respectively 
#         futures.txt,activity_labels.txt and subject_train.txt

#...Both train and tes share the same futures and activity labels
features <- read.table("./UCI HAR Dataset/features.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

#...IDs for different activity in each group (train, test)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

#...IDs for different subject in each group (train, test)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")


# Step 3.1- Rename columns for each of training and test data based on Step 2

namesFutures<-features$V2

colnames(train)<-namesFutures
colnames(test)<-namesFutures

# Step 3.2- Add IDs of Activity and Subject for each of training and test data
ActivitiesTrain<-factor(y_train[,1],labels = activities[,2])
ActivitiesTest<-factor(y_test[,1],labels = activities[,2])

train$Activity<-ActivitiesTrain
train$Subject<-factor(subject_train$V1)
test$Activity<-ActivitiesTest
test$Subject<-factor(subject_test$V1)

# Step 4- combine the training and test data sets 

CombinedData<-rbind(train,test)
# Just reorder the columns to have "Acivity" and "Subject" in first two columns
CombinedData<-CombinedData[,c("Activity","Subject",namesFutures)]

# Step 5- Filter the columns of the merged data set to only retain columns mean, std activity and subject

FilteredColumns<-grep("Activity|Subject|mean|std",colnames(CombinedData))
FilteredData<-CombinedData[FilteredColumns]

#  Step 6- add descriptive values for activity labels
CleanColNames<-colnames(FilteredData)
CleanColNames <- gsub("-mean", "Mean", CleanColNames)
CleanColNames <- gsub("-std", "Std", CleanColNames)
CleanColNames <- gsub("[-()]", "", CleanColNames)
colnames(FilteredData)<-CleanColNames

# Step 7- The objective : create a tidy data set with the average of each variable for each activity and each subject 
UnpivotData <- melt(FilteredData, id = c("Subject", "Activity"))
tidyData <- dcast(UnpivotData, Subject + Activity ~ variable, mean)
write.table(tidyData, "./tidy_dataset.txt", row.names = FALSE, quote = FALSE)
