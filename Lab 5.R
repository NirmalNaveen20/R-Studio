getwd()

setwd("D:\\Documents\\1.SLIIT\\2nd Year\\2nd Semester Moduels\\Probability & Statistics - IT2110\\Labs\\Lab 5")

getwd()


#read the text file
data1 <- read.table("Data.txt",header = TRUE, sep = ",")
data1

fix(data1)

#rename the table header
names(data1) <- c("X1", "X2")

attach(data1)

data1

#Q1
hist(X2, main = "Histogram for Number of Shareholders")


#Q2
histogram <- hist(X2, main = "Histogram for Number of Shareholders", breaks = seq(130,270, length = 8), right = FALSE)


#Q3
#1 step - identify break points
breaks <- round(histogram$breaks)
breaks <- round(histogram$breaks)
breaks

#2 step - identify frequency of each class
freq <- histogram$counts
freq

#3 step - identify the mid points of each class
mid <- histogram$mids
mid

#create empty vector
classes <- c()

for(i in 1:length(breaks)-1){
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], "]")
}

cbind(classes=classes, frequency = freq)

#Q4
#draw in the same plot
lines(histogram$mids,freq)

#draw in new plot 
plot(mid, freq, type = "l", main = "Frequency ploygon for number of shareholders", xlab = "Shareholders", ylab = "Frequency", ylim = c(0,max(freq)))

plot(mid, freq, type = "o", main = "Frequency ploygon for number of shareholders", xlab = "Shareholders", ylab = "Frequency", ylim = c(0,max(freq)))

#Q5
cum.freq <- cumsum(freq)
cum.freq

#empty vector
new <- c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i] = 0
  } else {
    new[i]=cum.freq[i-1]
  }
}

plot(breaks, new, type = "o", main = "Frequency ploygon for number of shareholders", 
     xlab = "Shareholders", ylab = "Cumalative Frequency", ylim = c(0,max(cum.freq)))


cbind(upper = breaks, CumFreq = new)

#Q6


