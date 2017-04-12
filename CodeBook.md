This CodeBook shows the 9 steps to generate the file "DS_tidy.txt. Also this CodeBook describes the different variables and subjects that this resulting file contents.

run_analysis.R:

Steps:
Step 0: checking file: if the file it doesn’t already exists, then it is downloaded and unzipped.
Step 1 reading activity labels and features  
Step 2: Extracting mean and standard deviation (these are the variables required for this final project). The spaces in the name variables are cleaned.
Step 3: reading files (tests and train tables) and loading data sets
Step 4: Merging all data that is required and names to the columns are given
Step 5: Converting activities & subjects into factors
Step 6: Melting all data into one 
Step 7: Creation of a second independent tidy data set
Step 8: new file (DS_tidy.txt) writing 


DS_tidy.txt

Identifiers:
-subjects (1..30)
-activities by subjects (6): WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

Variables (79):

•	tBodyAccmeanX 
•	tBodyAccmeanY
•	tBodyAccmeanZ 
•	tBodyAccstdX 
•	tBodyAccstdY 
•	tBodyAccstdZ 
•	tGravityAccmeanX
•	tGravityAccmeanY 
•	tGravityAccmeanZ
•	tGravityAccstdX 
•	tGravityAccstdY 
•	tGravityAccstdZ 
•	tBodyAccJerkmeanX 
•	tBodyAccJerkmeanY 
•	tBodyAccJerkmeanZ 
•	tBodyAccJerkstdX 
•	tBodyAccJerkstdY 
•	tBodyAccJerkstdZ 
•	tBodyGyromeanX
•	tBodyGyromeanY 
•	tBodyGyromeanZ 
•	tBodyGyrostdX 
•	tBodyGyrostdY 
•	tBodyGyrostdZ
•	tBodyGyroJerkmeanX 
•	tBodyGyroJerkmeanY 
•	tBodyGyroJerkmeanZ 
•	tBodyGyroJerkstdX 
•	tBodyGyroJerkstdY 
•	tBodyGyroJerkstdZ 
•	tBodyAccMagmean 
•	tBodyAccMagstd 
•	tGravityAccMagmean
•	tGravityAccMagstd 
•	tBodyAccJerkMagmean
•	tBodyAccJerkMagstd 
•	tBodyGyroMagmean 
•	tBodyGyroMagstd
•	tBodyGyroJerkMagmean 
•	tBodyGyroJerkMagstd
•	fBodyAccmeanX 
•	fBodyAccmeanY 
•	fBodyAccmeanZ 
•	fBodyAccstdX 
•	fBodyAccstdY
•	fBodyAccstdZ
•	fBodyAccmeanFreqX
•	fBodyAccmeanFreqY
•	fBodyAccmeanFreqZ 
•	fBodyAccJerkmeanX 
•	fBodyAccJerkmeanY 
•	fBodyAccJerkmeanZ 
•	fBodyAccJerkstdX 
•	fBodyAccJerkstdY 
•	fBodyAccJerkstdZ
•	fBodyAccJerkmeanFreqX 
•	fBodyAccJerkmeanFreqY
•	fBodyAccJerkmeanFreqZ
•	fBodyGyromeanX 
•	fBodyGyromeanY 
•	fBodyGyromeanZ 
•	fBodyGyrostdX 
•	fBodyGyrostdY 
•	fBodyGyrostdZ
•	fBodyGyromeanFreqX 
•	fBodyGyromeanFreqY 
•	fBodyGyromeanFreqZ
•	fBodyAccMagmean
•	fBodyAccMagstd 
•	fBodyAccMagmeanFreq
•	fBodyBodyAccJerkMagmean 
•	fBodyBodyAccJerkMagstd 
•	fBodyBodyAccJerkMagmeanFreq
•	fBodyBodyGyroMagmean 
•	fBodyBodyGyroMagstd
•	fBodyBodyGyroMagmeanFreq
•	fBodyBodyGyroJerkMagmean
•	fBodyBodyGyroJerkMagstd 
•	fBodyBodyGyroJerkMagmeanFreq







