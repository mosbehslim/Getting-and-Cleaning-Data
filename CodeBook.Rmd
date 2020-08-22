---
title: "CodeBook"

output: html_document

---
# Getting and Cleaning Data - Course Project

## The Experiment

the output of an experience,capturing sensor measurment from a smartphone, was divided in two datasets train.txt (70% of obs) and test.txt(70% of obs). the measures relate to six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). Each subject have a unique ID (from 1 to 30) and each activity have have a unique ID (from 1 to 6) and a label describing the activity.
Each meausure (561) describe the mean and standard deviation of one atomic dimension of the activity, thereby the acceleration and the gravity are meausered in tree axis X,Y and Z.

# Descriptions
The tidy data set is a 81 variables, the first two are subject ID and label of the activity. 
 
 Subject                      Activity                     tBodyAccMeanX               
 tBodyAccMeanY                tBodyAccMeanZ                tBodyAccStdX                
 tBodyAccStdY                 tBodyAccStdZ                 tGravityAccMeanX            
 tGravityAccMeanY             tGravityAccMeanZ             tGravityAccStdX             
 tGravityAccStdY              tGravityAccStdZ              tBodyAccJerkMeanX           
 tBodyAccJerkMeanY            tBodyAccJerkMeanZ            tBodyAccJerkStdX            
 tBodyAccJerkStdY             tBodyAccJerkStdZ             tBodyGyroMeanX              
 tBodyGyroMeanY               tBodyGyroMeanZ               tBodyGyroStdX               
 tBodyGyroStdY                tBodyGyroStdZ                tBodyGyroJerkMeanX          
 tBodyGyroJerkMeanY           tBodyGyroJerkMeanZ           tBodyGyroJerkStdX           
 tBodyGyroJerkStdY            tBodyGyroJerkStdZ            tBodyAccMagMean             
 tBodyAccMagStd               tGravityAccMagMean           tGravityAccMagStd           
 tBodyAccJerkMagMean          tBodyAccJerkMagStd           tBodyGyroMagMean            
 tBodyGyroMagStd              tBodyGyroJerkMagMean         tBodyGyroJerkMagStd         
 fBodyAccMeanX                fBodyAccMeanY                fBodyAccMeanZ               
 fBodyAccStdX                 fBodyAccStdY                 fBodyAccStdZ                
 fBodyAccMeanFreqX            fBodyAccMeanFreqY            fBodyAccMeanFreqZ           
 fBodyAccJerkMeanX            fBodyAccJerkMeanY            fBodyAccJerkMeanZ           
 fBodyAccJerkStdX             fBodyAccJerkStdY             fBodyAccJerkStdZ            
 fBodyAccJerkMeanFreqX        fBodyAccJerkMeanFreqY        fBodyAccJerkMeanFreqZ       
 fBodyGyroMeanX               fBodyGyroMeanY               fBodyGyroMeanZ              
 fBodyGyroStdX                fBodyGyroStdY                fBodyGyroStdZ               
 fBodyGyroMeanFreqX           fBodyGyroMeanFreqY           fBodyGyroMeanFreqZ          
 fBodyAccMagMean              fBodyAccMagStd               fBodyAccMagMeanFreq         
 fBodyBodyAccJerkMagMean      fBodyBodyAccJerkMagStd       fBodyBodyAccJerkMagMeanFreq 
 fBodyBodyGyroMagMean         fBodyBodyGyroMagStd          fBodyBodyGyroMagMeanFreq    
 fBodyBodyGyroJerkMagMean     fBodyBodyGyroJerkMagStd      fBodyBodyGyroJerkMagMeanFreq

