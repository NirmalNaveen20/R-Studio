getwd()
setwd("D:\\Documents\\1.SLIIT\\2nd Year\\2nd Semester Moduels\\Probability & Statistics - IT2110\\Labs\\Lab 6")
getwd()

#Q1
data<-read.table("Forest.txt", header = TRUE, sep = ",")
data

fix(data)
attach(data)

#Q2
str(data)


#Q3
#517 observations

#Q4
min(wind)
max(wind)

#Q5
summary(data)
summary(temp)


#Q6
boxplot(wind, horizontal = TRUE, outline = TRUE, pch=11)
data


#Q7
#negative distribution


#Q8
median(temp)


#Q9
mean(wind)
sd(wind)


#Q10
#IQR=Q3-Q1
IQR(wind)


#Q11
#two way frequently table for day, month
freq <- table(day,month)
freq
#21 observations

#Q12
mean(temp[month=="sep"])


#Q13
count <- table(day[month=="jul"])
names(count[count==max(count)])

freq

#satuarday
