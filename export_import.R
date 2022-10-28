getwd()

setwd("D:\\Documents\\1.SLIIT\\2nd Year\\2nd Semester Moduels\\Probability & Statistics - IT2110\\Labs\\Lab 2")
getwd()

#import

data1 <- read.csv("DATA 2.csv", header = TRUE, sep = ",")
data1

#export 
lab2 <- data.frame(column1=c("V1", "V2", "V3"), column2=c(100,320,500))
print(lab2)

write.csv(lab2, "D:\\Documents\\1.SLIIT\\2nd Year\\2nd Semester Moduels\\Probability & Statistics - IT2110\\Labs\\lab2.csv", row.names = FALSE)

#function

#function name is check
check <- function(x){
  if(x%%3==0){
    r = print("This is divisible by 3")
  } else {
    r = print("This is not divisible by 3")
  }
}

check(10)

#1
a <- 2
b <- 3
c <- -1

x1 <- (-b-sqrt(b^2-4*a*c))/(2*a)
x2 <- (-b+sqrt(b^2-4*a*c))/(2*a)

y<-function(x)(2*x^2+3*x-1)
data.frame("root"=c(x1,x2), "value" = c(y(x1), y(x2)))


#4 
x_vector<-c(1:20)
x_vector

sum(x_vector%%3==0)


#6
x<-c(1,2,6,23,70,43)
max<-0
for(i in 1:length(x)){
  if(x[i]>max){
    max<-x[i]
  }
}

print(max)

#7
x[which.max(x)]
x[which.min(x)]






