
getwd()

#setting path
setwd("D:\\Documents\\1.SLIIT\\2nd Year\\2nd Semester Moduels\\Probability & Statistics - IT2110\\Labs\\Lab 4")


#read dataset
data <- read.table("DATA 4.txt", sep = "", header = TRUE)
data


#data editor view
fix(data)

#replacing column header with new label names

names(data) <- c("Team","Attendance", "Salary", "Years")
data


attach(data)

#BOXPLOT
boxplot(Attendance,main="Boxplot for Attendance",outline = TRUE,xlab="Attendance", horizontol = TRUE)

boxplot(Salary,main="Boxplot for Salary",outline = TRUE,xlab="Salary", horizontol = TRUE)

boxplot(Years,main="Boxplot for Years",outline = TRUE,xlab="Years", horizontol = TRUE)



#Histrogram
hist(Attendance, main = "Histrogram for Attendance", ylab = "Frequency")
abline(h=0)

hist(Salary, main="Histrogram for Salary", ylab = "Frequency")

hist(Years, main="Histrogram for Years", ylab = "Frequency")



#steam-leaf 
stem(Attendance)
stem(Salary)
stem(Years)

#mean
mean(Attendance)
mean(Salary)
mean(Years)

#median
median(Attendance)
median(Salary)
median(Years)

#Standard Deviation
sd(Attendance)
sd(Salary)
sd(Years)

#All Quartile Summary
summary(Attendance)
summary(Salary)
summary(Years)


quantile(Attendance)

#First Quartile
quantile(Attendance)[2]


#Inter quartile range
IQR(Attendance)
IQR(Salary)
IQR(Years)


###################### Create Function ######################

#Q3

get.modes<-function(y){
  counts<-table(y)
  names(counts)[counts==max(counts)]
}

data
get.modes(Years)

#Q4
get.outliers<-function(y){
  ql<-quantile(y)[2]
  q3<-quantile(y)[4]
  iqr<-q3-q1
  lb<-q1-1.5*iqr
  ub<-q3+1.5*iqr
  print(paste("Upper Bound", ub))
  print(paste("Lower Bound", lb))
  print(paste("Outliers", paste(sort(y[y<lb | y>ub]), collapse = ",")))
}

get.outliers(Years)




