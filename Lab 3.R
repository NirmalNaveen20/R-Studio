getwd()
setwd("D:\\Documents\\1.SLIIT\\2nd Year\\2nd Semester Moduels\\Probability & Statistics - IT2110\\Labs\\Lab 3")
getwd()

#import dataset
data <- read.csv("DATA 3.csv", sep = ",", header = TRUE)
data

#get data in the editor mode
fix(data)

#rename the columns
names(data) <- c("Age","Gender","Accomodation")
fix(data)

#rename categorical data
data$Gender <- factor(data$Gender, c(1,2), c("Male", "Female"))
fix(data)

data$Accomodation <- factor(data$Accomodation, c(1,2,3), c("Stays at Home", "Boarded Students", "Lodging"))
fix(data)

attach(data)

#Q2
#frequency table
gender.freq <- table(Gender)
acc.freq <- table(Accomodation)

gender.freq
acc.freq

#pie chart
pie(gender.freq, "Pie chart for Gender")
pie(acc.freq, "Pie chart for Accomodation")

#barplot
barplot(gender.freq, main = "Barplot for Gender", ylab = "Frequency" )

barplot(acc.freq, main = "Barplot for Accomodation", ylab = "Frequency" )
abline(h=0)

#boxplot
boxplot(Age, main = "Boxplot for Age" ,ylab = "Age",horizontal = TRUE, outline = TRUE)


#Q3
#Two way frequency table
gender_acc.freq <- table(Gender,Accomodation)
gender_acc.freq

#stack bar chart
barplot(gender_acc.freq, main = "Gender & Accomodation", legend = rownames(gender_acc.freq))

#cluster bar chart

barplot(gender_acc.freq, beside = TRUE, main = "Gender & Accomodation", legend = rownames(gender_acc.freq))

#Q4

#side of side boxplot
boxplot(Age~Gender, main = "Boxplot for age by Gender", xlab = "Gender", ylab = "Age")

boxplot(Age~Accomodation, main = "Boxplot for age by Age", xlab = "Accomodation", ylab = "Age", outpch = 8)

#Q5
xtabs(Age~Gender+Accomodation)/gender_acc.freq
