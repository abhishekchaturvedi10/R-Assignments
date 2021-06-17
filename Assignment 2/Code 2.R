data <- read.csv("diabetes_data_upload.csv")

library(ggplot2)

#part A

#density plot
ggplot(data, aes(Age)) + geom_density(fill = "yellow", color = "red") + labs(title = "AGE DENSITY PLOT", y = "DENSITY", x = "AGE") + theme_dark()

#part B

#data with class = positive 
pos_data <- data[data$class == "Positive", ] 

#data with class = negative
neg_data <- data[data$class == "Negative", ]

#violin plot for gender vs age for class = positive data
ggplot(pos_data, aes(Gender, Age, fill = class)) + geom_violin() + theme_dark() + labs(title = "GENDER vs AGE PLOT FOR POSITIVE CLASS", y = "AGE", x = "GENDER")

#violin plot for gender vs age for class = positive data
ggplot(neg_data, aes(Gender, Age, fill = class)) + geom_violin() + theme_dark() + labs(title = "GENDER vs AGE PLOT FOR NEGATIVE CLASS", y = "AGE", x = "GENDER")

#violin plot for gender vs age for both types of classes
ggplot(data, aes(Gender, Age, fill=class)) + geom_violin() + theme_dark() + labs(title = "GENDER vs AGE PLOT FOR DIFFERENT CLASSES", y = "AGE", x = "GENDER")

#part C

GENDER <- data$Gender
CLASS <- data$class
AGE <- data$Age

#changing string into integer
data <- lapply(data, function(string)as.integer(string == "Yes"))
data$class <- unname(sapply(CLASS, function(string)as.integer(string == "Positive")))
data$Gender <- unname(sapply(GENDER, function(string)as.integer(string == "Male")))

data$Age <- AGE

#model class with every other attribute
LinearModel <- lm(class~., data = data)

summarylm <- summary(LinearModel)

print(summarylm)