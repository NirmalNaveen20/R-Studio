getwd()
setwd("D:\\Documents\\1.SLIIT\\2nd Year\\2nd Semester Moduels\\Probability & Statistics - IT2110\\Labs\\Lab 7")

getwd()

nicotine <- read.table("Data - Lab 7.txt", header = TRUE)
fix(nicotine)

#change data structure
nicotine
nicotine <- nicotine[[1]]
nicotine

#Q1
mean(nicotine)
var(nicotine)
sd(nicotine)

#Q2
s <- sample(nicotine, 5)
s

samples <- c()
n <- c()

for(i in 1:30){
  s <- sample(nicotine, 5)
  samples <- cbind(samples, s)
  n <- c(n,paste('S', i))
}

colnames(samples) <- n
samples

s.means <- colMeans(samples)
s.means

s.vars <- apply(samples, 2, var)
s.vars


#Q3
mean(s.means)
var(s.means)



#Q4
mean(nicotine)
mean(s.means)

#two values are approximately equal 

#Q5
var(nicotine)
var(s.means)
#two values are not equal the reason is sample size is too small.


