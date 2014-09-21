## Download and uzip raw data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "~/GitHub/Getting_Cleaning_Data/Assignment/UCI_Dataset.zip", method = "curl")
unzip("~/GitHub/Getting_Cleaning_Data/Assignment/UCI_Dataset.zip")

## read into R
# read features and activity
features <- read.table("~/GitHub/Getting_Cleaning_Data/Assignment/UCI HAR Dataset/features.txt")
activity_labels <- read.table("~/GitHub/Getting_Cleaning_Data/Assignment/UCI HAR Dataset/activity_labels.txt")
# read test data
testData <- read.table("~/GitHub/Getting_Cleaning_Data/Assignment/UCI HAR Dataset/test/subject_test.txt")
testDataX <- read.table("~/GitHub/Getting_Cleaning_Data/Assignment/UCI HAR Dataset/test/X_test.txt")
testDataY <- read.table("~/GitHub/Getting_Cleaning_Data/Assignment/UCI HAR Dataset/test/y_test.txt")

# load train data sets
trainData <- read.table("~/GitHub/Getting_Cleaning_Data/Assignment/UCI HAR Dataset/train/subject_train.txt")
trainDataX <- read.table("~/GitHub/Getting_Cleaning_Data/Assignment/UCI HAR Dataset/train/X_train.txt")
trainDataY <- read.table("~/GitHub/Getting_Cleaning_Data/Assignment/UCI HAR Dataset/train/y_train.txt")

## Merge training and test data
# merge all
ttData <- rbind(testData, trainData)
colnames(ttData) <- "ttData"

# merge labels
lables <- rbind(testDataY, trainDataY)
lables <- merge(lables, activity_labels, by = 1)[,2]

# merge all data
data <- rbind(testDataX, trainDataX)
colnames(data) <- features[,2]
allData <- cbind(ttData, lables, data) #merge all data sets 

## Extract mean and standard diviation
allMean <- grep("mean()", colnames(allData), fixed = TRUE)
allSD <- grep("std()", colnames(allData), fixed = TRUE)
gData <- allData[,c(1,2,allMean,allSD)]

## Create a tidy data set with the average of each variable for activity and subject
# install reshape2 package
install.packages("reshape2")
library(reshape2)
# tidy up the room
hesMelting = melt(gData, id.var = c("ttData", "lables"))
tidyData = dcast(hesMelting, ttData + lables ~ variable, mean)
write.table(tidyData, file = "~/GitHub/Getting_Cleaning_Data/Assignment/tidydata.txt")

# print
tidyData