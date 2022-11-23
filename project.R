# Load required libraries

library(ezqsar)

#Import datasets

file1<-("C:/Users/ugwupaschal/Downloads/converted_raw data.sdf")
file2<-("C:/Users/ugwupaschal/Downloads/IC50.csv")
file3<-("C:/Users/ugwupaschal/Downloads/de novo data.sdf")


# Fit model
model<-ezqsar_f (SDFfile=file1, activityfile=file2, newdataset=file3, testset=c(2,4,6,8,10,12,14,16,18,20,22,24,26))

attributes (model)
a<-print (model$Q2)
b<-print (model$R2)
c<-print (model$test)
d<-print (model$R2_pred)
e<-print (model$Tanimoto_test_sum)
f<-print (model$AD_outlier_test)
g<-print (model$newset)
h<-print (model$Tanimoto_newset_sum)
i<-print(model$Model)
train<-model$train
test<-model$test


write.csv(train, "train.csv")
