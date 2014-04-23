## READ ME

### Progression of Code in run_analysis.R

* First, the code reads the files in the UCI HAR Dataset folder.
* Then, the column names are added to the test dataset.
* An empty matrix is created to store the activity labels when they are added inside the matrix.
* Once the for loop substitutes the number for the appropriate label, the subject and activity columns are labeled.
* Lastly for the test matrix, the columns and dataset are combined into test_dataset.

* Next, the training files are read into variables with column names.
* Another empty matrix is made to substitute the activity labels for the training series of activity numbers.
* Then, another for loop to substitute numbers for labels.
* The train_dataset contains the combination of subject and activity columns with the training dataset.

* The first dataset generated is the overall dataset with test and training data combined.
* The second dataset finds the columns with mean or std of the features. Then, the dataset is made of just those columns with the subject and activity columns.
* The third dataset splits just the test and training datasets by subject groups. Then, calculates the mean of those columns vs. subject groups.

* The portion underneath the function call states the output of the three datasets: UCIdataset, UCIpull, and UCI_mean.