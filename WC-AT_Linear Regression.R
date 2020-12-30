#importing the dataset
wcat <- read.csv('/Users/lalitmehendiratta/Downloads/Data Science/Datasets/wc-at.csv')
head(wcat)
boxplot(wcat$Waist, wcat$AT)

#building the regression model
model <- lm(AT~Waist, data=wcat)

#creating new data set for future values
new_data <- data.frame(Waist=c(40,75,200))

#predicting the new values
pred <- predict(model, new_data)
pred

#predicting the AT values for given data in the dataset
pred_old <- predict(model)
pred_old

summary(model)

#final data set
final <- data.frame(wcat, pred_old, "Error"= wcat$AT-pred_old)
final
