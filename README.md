---
title: "Getting and Cleaning Data Course Project"
author: "Ben Mosbeh Mohamed Slim"
date: "14/08/2020"
output: html_document
---



## Getting and Cleaning Data : Course Project
-The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone

- The measurments were divided in two files : train.txt and test.txt

- Objective behind the  R script called run_analysis.R is to create : 
a tidy data set with the average of each variable for each activity and each subject.

- Steps to resolve the problem :

  - Step 1- Read train and test data
  - Step 2- Read future, label activity and ID subjects from respectively futures.txt,activity_labels.txt and subject_train.txt 
  
  - Step 3.1- Rename  columns for each of training and test data
         3.2- Add Activity and Subject ID for each of training and test data
  - Step 4- combine the training and test data sets 
  - Step 5- Filter the columns of the merged data set to only retain columns mean, std
           activity and subject
  - Step 6- add descriptive values for activity labels
  - Step 7- The objective : create a tidy data set with the average of each variable                              for each activity and each subject
  

