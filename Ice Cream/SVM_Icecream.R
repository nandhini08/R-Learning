install.packages("e1071",dependencies=TRUE)
library(e1071)
Ice_Cream= read.csv("Icecream.csv")
index=1:nrow(Ice_Cream)
index
test_index=sample(index,trunc(length(index)*30/100))
test_set=Ice_Cream[test_index,]
training_set=Ice_Cream[-test_index,]
summary(test_set)
summary(training_set)
model= svm(income~ . ,data=training_set)
summary(model)
main="svm(training_set)"
plot(training_set[,-1],
     main = 'SVM (training_set)')
?svm


