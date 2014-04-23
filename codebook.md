## The Code Book

### Variables and Units

* activityLabels - reads the activity_labels.txt file
* features - reads the features.txt file
* y_testAL - reads the y_test.txt file in the test folder
* subject_test - reads the subject_test.txt file in the test folder
* X_test - reads the X_test.txt file in the test folder
* y_testAL1 - starts as an empty matrix; ends as the label substitution for the Activity Labels column
* test_dataset - combination of the subject_test and activity label columns, and the test data matrix
* y_trainAL - reads the y_train.txt file in the train folder
* subject_train - reads the subject_train.txt file in the train folder
* X_train - reads the X_train.txt file in the train folder
* y_trainAL1 - starts as an empty matrix; ends as the label substitution for the Activity Labels column
* train_dataset - combination of the subject_train and activity label columns, and the train data matrix
* UCIdataset - combination of test and training data sets with activity label substitutions
* UCInames - vector of column names in the UCIdataset matrix
* UCIextract - a vector of column name positioning of each name that contains mean or std
* UCIpull - combines the first two columns from UCIdataset and the columns that contain mean or std in the column name
* UCItest - a smaller matrix with the subject column and the test data
* UCItrain - a smaller matrix with the subject column and the training data
* UCIdataset1 - combination of UCItest and UCItrain matrices
* UCInames1 - column names of the UCIdataset1 matrix
* UCI_split - splits the UCIdataset1 matrix in groups defined by the Subject column
* UCI_mean - computes the mean of each of the columns versus the subject group

### Study Design

* I read each of the data files using the function read.table.
* I substituted the values in the subject files for the activity labels.
* Then I was able to label columns from the features file and add columns to the main test and training matrices appropriately.
* I binded the test and training matrices together and it contains 30 subject groups. (Numbers 1, 3, and 4)
* Then I used the grep function to separate the columns that contained the mean and std of the variables. (Number 2)
* Then I made new matrices with only the subject group column and test or training matrix. 
* Once completed, split and sapply was used to gather the mean of each variable in the subject group.



