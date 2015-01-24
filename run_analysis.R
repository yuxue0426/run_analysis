# read data
train_x<-read.table("X_train.txt")
train_y<-read.table("Y_train.txt")
subject_train<-read.table("subject_train.txt")
test_x<-read.table("X_test.txt")
test_y<-read.table("Y_test.txt")
subject_test<-read.table("subject_test.txt")
subject_train<-read.table("subject_train.txt") 
activity_lable<-read.table("activity_labels.txt")
features<-read.table("features.txt")
# merge test and train data
mergedata<-rbind(train_x,test_x)
# add features to be colnames
colnames(mergedata)<-c(as.character(features[,2]))
# calculate mean and sd
mean_cols_x <- grep("mean()", colnames(mergedata), fixed=TRUE)
std_cols_x <- grep("std()", colnames(mergedata), fixed=TRUE)
mean_std_x <- mergedata[,c(mean_cols_x,std_cols_x)]
# label the data set with descriptive variable names
colnames(mergedata)<-c(as.character(features[,2]))
# Uses descriptive activity names to name the activities in the data set
allydata<-rbind(train_y,test_y)
allydata<-allydata$V1
for(i in 1:10299){	
	if(allydata[i]==1){allydata[i]<-"WALKING"}
	if(allydata[i]==2){allydata[i]<-"WALKING_UPSTAIRS"}
	if(allydata[i]==3){allydata[i]<-"WALKING_DOWNSTAIRS"}
	if(allydata[i]==4){allydata[i]<-"SITTING"}
	if(allydata[i]==5){allydata[i]<-"STANDING"}
	if(allydata[i]==6){allydata[i]<-"LAYING"}	
}
all_activity<-cbind(allydata,mean_std_x)
allsubject<-rbind(subject_train,subject_test)
mergedata$activity<-all_activity
bigdata<-cbind(mergedata,allsubject$V1)
# create an independent tidy data set with the average of each variable for each activity and each subject
tidy<-aggregate(bigdata,by=list(bigdata[,562],bigdata[,563]),FUN=mean)
# save to a new file
write.table(Tidy, file = "tidydata.txt", row.name=FALSE)

