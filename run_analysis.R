run_analysis <- function() {
## Testing data set reading and merge  
        activityLabels <- read.table("./activity_labels.txt")
        y_testAL <- read.table("./test/y_test.txt")
        features <- read.table("./features.txt")
        subject_test <- read.table("./test/subject_test.txt")
        X_test <- read.table("./test/X_test.txt")
        colnames(X_test) <- features[,2]
        y_testAL1 <- matrix(character(), ncol = 1)
        for (i in 1:nrow(y_testAL)) {
                if (y_testAL[i,1] == 1) {
                        y_testAL1 <- rbind (y_testAL1, activityLabels[1,2])
                } else if (y_testAL[i,1] == 2) {
                        y_testAL1 <- rbind (y_testAL1, activityLabels[2,2])
                } else if (y_testAL[i,1] == 3) {
                        y_testAL1 <- rbind (y_testAL1, activityLabels[3,2])
                } else if (y_testAL[i,1] == 4) {
                        y_testAL1 <- rbind (y_testAL1, activityLabels[4,2])
                } else if (y_testAL[i,1] == 5) {
                        y_testAL1 <- rbind (y_testAL1, activityLabels[5,2])
                } else {
                        y_testAL1 <- rbind (y_testAL1, activityLabels[6,2])
                }
        }
        colnames(subject_test) <- "Subject"
        colnames(y_testAL1) <- "Activity"
        test_dataset <- cbind(subject_test, y_testAL1, X_test)
        
## Training data set reading and merge        
        y_trainAL <- read.table("./train/y_train.txt")
        subject_train <- read.table("./train/subject_train.txt")
        X_train <- read.table("./train/X_train.txt")
        colnames(X_train) <- features[,2]
        y_trainAL1 <- matrix(character(), ncol = 1)
        for (i in 1:nrow(y_trainAL)) {
                if (y_trainAL[i,1] == 1) {
                        y_trainAL1 <- rbind (y_trainAL1, activityLabels[1,2])
                } else if (y_trainAL[i,1] == 2) {
                        y_trainAL1 <- rbind (y_trainAL1, activityLabels[2,2])
                } else if (y_trainAL[i,1] == 3) {
                        y_trainAL1 <- rbind (y_trainAL1, activityLabels[3,2])
                } else if (y_trainAL[i,1] == 4) {
                        y_trainAL1 <- rbind (y_trainAL1, activityLabels[4,2])
                } else if (y_trainAL[i,1] == 5) {
                        y_trainAL1 <- rbind (y_trainAL1, activityLabels[5,2])
                } else {
                        y_trainAL1 <- rbind (y_trainAL1, activityLabels[6,2])
                }
        }
        colnames(subject_train) <- "Subject"
        colnames(y_trainAL1) <- "Activity"
        train_dataset <- cbind(subject_train, y_trainAL1, X_train)

## Total dataset (Numbers 1, 3 and 4)
## Output is UCIdataset
        UCIdataset <- rbind(test_dataset, train_dataset)

## Extract means and stds (Number 2)
## Output is UCIpull
        UCInames <- colnames(UCIdataset)
        UCIextract <- grep("mean|std", UCInames)
        UCIpull <- cbind(UCIdataset[,1:2], UCIdataset[ ,UCIextract])

##Second independent tidy data set (Number 5)
## Output is UCI_mean
        UCItest <- cbind(subject_test, X_test)
        UCItrain <- cbind(subject_train, X_train)
        UCIdataset1 <- rbind(UCItest, UCItrain)
        UCInames1 <- colnames(UCIdataset1)
        UCI_split <- split(UCIdataset1, UCIdataset1$Subject)        
        UCI_mean <- sapply(UCI_split, function(x) colMeans(x[, features[,2]]))
}

UCIdataset
UCIpull
UCI_mean