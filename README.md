Getting_and_Cleaning_Data_Course_Project
========================================
Github Repository: https://github.com/uwhawk/Getting_and_Cleaning_Data

Submitted by: Jeff Roberts

Date: 18 Sept. 2014


Course Project for Coursera Getting and Cleaning Data
The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

####The R script called run_analysis.R that does the following. 

  1- Merges the training and the test sets to create one data set.
  
  2-Extracts only the measurements on the mean and standard deviation for each measurement. 
  
  3-Uses descriptive activity names to name the activities in the data set
  
  4-Appropriately labels the data set with descriptive variable names. 
  
  5-Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

####Files Inclued are:
run_analysis.R-script that performs the 5 steps above and produces the tidy dataset tidy.csv.

CodeBook.pdf-Describes files used, code, variables and summares which were calculated in the script`run_analysis.R.

README.md-Explanation of the analysis which was performed.

README.pdf-Explanation of the analysis which was performed.

tidy.csv-tidy .cvs file dataset produced by run_analysis.R which contains the average of each variable for each activity and each subject.

tidy.dat-tidy R-table dataset produced by run_analysis.R which contains the average of each variable for each activity and each subject.

