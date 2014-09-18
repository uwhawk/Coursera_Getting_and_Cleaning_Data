#################################Coursera Getting and Cleaning Data Project
#################################Jeff Roberts
#################################18 September 2014


###################################Open Training and Test Data Sets in Matricies
test<- as.matrix(read.table("X_test.txt", header=FALSE))
train<-as.matrix(read.table("X_train.txt", header=FALSE))
###open row labels in dataframe
test.row<- as.matrix(read.table("y_test.txt", header=FALSE))
train.row<- as.matrix(read.table("y_train.txt", header=FALSE))
###################################Assign Row Labels
rownames(test) <- test.row[,1]
rownames(train) <- train.row[,1]
###open features.txt
features<-as.data.frame(read.table("features.txt", header=FALSE))
features$V2<-gsub("mean()", "Mean Value",features$V2,ignore.case = TRUE)
features$V2<-gsub("std()", " Standard Deviation",features$V2,ignore.case = TRUE)
features$V2<-gsub("mad()", " Median absolute deviation",features$V2,ignore.case = TRUE)
features$V2<-gsub("max()", "Largest Value in array", features$V2,ignore.case = TRUE)
features$V2<-gsub("min()", "Smallest Value in array", features$V2,ignore.case = TRUE)
features$V2<-gsub("sma()", "Signal magnitude area", features$V2,ignore.case = TRUE)
features$V2<-gsub("energy()", "Energy measure. Sum of he squares divided by the number of values.", features$V2,ignore.case = TRUE)
features$V2<-gsub("iqr()", "Interquartile range", features$V2,ignore.case = TRUE)
features$V2<-gsub("entropy()", "Signal entropoy", features$V2,ignore.case = TRUE)
features$V2<-gsub("arCoeff()", "Autoregresion coefficients with Burg order equal to 4", features$V2,ignore.case = TRUE)
features$V2<-gsub("correlation()", "correlation coefficient between two signals",features$V2,ignore.case = TRUE)
features$V2<-gsub("maxInds()", "Index of the frequency component with largest magnitue",features$V2,ignore.case = TRUE)
features$V2<-gsub("meanFreq()", "Weighted average of the frequncy components to obtain a mean frequency",features$V2,ignore.case = TRUE)
features$V2<-gsub("skewness()", "Skewness of the frequency domain signal",features$V2,ignore.case = TRUE)
features$V2<-gsub("kurtosis()", "Kurtosis of the frequency domain signal",features$V2,ignore.case = TRUE)
features$V2<-gsub("bandsEnergy()", "Energy of frequency interval within the 64 bins of the FFT of each window",features$V2,ignore.case = TRUE)
features$V2<-gsub("angle()", "Angle between two vectors",features$V2,ignore.case = TRUE)
###################################Assign Column Labels
colnames(test) <- features[,2]
colnames(train) <- features[,2]
############################################################Combine test and training sets into a single dataset
single<-as.data.frame(rbind(test, train))
a<-as.data.frame(as.numeric(rownames(single)))
colnames(a)<-"user"
single<-cbind(single,a)
############################################################Extract mean and standard deviation measurements
single.ms<-single[,grep("mean|Mean|standard|Standard|user", colnames(single), value=TRUE)]
dim(single)
dim(single.ms)
############################################################Create second dataset with average variables (means/sd's) by subject
single.tidy<-aggregate(. ~ user, data = single.ms, mean)
############################################################write single.tidy to R report and .csv files
write.table(single.tidy, "tidy_data.dat", col.names = TRUE, row.names=TRUE)
write.csv(single.tidy, "tidy.csv", row.names=FALSE)