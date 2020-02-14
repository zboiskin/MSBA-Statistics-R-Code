#Statistical Computer Assignment 1 1.14.2020
#1b) 10th percentile of a normal distribution
qnorm(.10)
#1c) 10th percentile with mean 100 and sd 10
qnorm(.10,100,10)
#1d) middle bracket value of 90%, split 10% into 5% on either side
qnorm(c(.05, .95))
#1e) probability to get a value of 80 with mean of 100 and sd of 10
pnorm(80,100,10)

?qnorm
?pnorm
qnorm(c(.25,.75))

#1f)
x1 <- 5
x2 <- 2
x3 <- 13
y <- (x1+x2)/x3
y
#1g) log of
log(13)
#1h) square root of
sqrt(13)
#1i
mean(5,2,8,3,1,4,12)
sd(c(5,2,8,3,1,4,12))
#2
#2a) the data I found represents reliability scores for the Toyota 4runner on a scale 1-5
#b) the scale is calculated based on the the average attribute score of the specific vehicle compared to similar ones in its class.
#this data is collected through surveys and verified drivers reporting the amount of times a the car needs repairs
#c) 2017-3, 2016-4, 2015-4, 2014-3, 2013-3, 2012-4, 2011-3, 2010-3, 2009-5, 2008-5,
#2007-5, 2006-4

#3
#3a)
Frunner <- c(3,4,4,3,3,4,3,3,5,5,5,4)
mean(Frunner)
median(Frunner)
#3b)
sd(Frunner)
#5th, 10th, 95th percentile
quantile(Frunner, c(.01,.05,.10,.25,.50,.75,.90,.95,.99))
#3c
#IQR = 
4.25-3
#i) the IQR is the range one will fine the middle 50% of scores and the score is the variability of that range
#3d
#range is 5-3 = 2
#variance
var(Frunner)
sd(Frunner)
#3e
hist(Frunner, main = "4Runner Quality Histogram", xlab = "Quality Score")
#3f
boxplot(Frunner, xlab = ("4Runner Quality Boxplot"))

#3g
#a more in depth understanding of the IQR beyond that it is just Q1-Q3

#4
Toyota <- Toyota_Corolla_Asking_Price
Price <- Toyota$AskingPrice
#4a)
mean(Price)
median(Price)
#4b)
sd(Price)
#5th, 10th,95th percentile
quantile(Price, c(.01,.05,.10,.25,.50,.75,.90,.95,.99))
#3c
#IQR = 
11950-8450
#3d
#Range
32500-4350
#Variance
var(Toyota$AskingPrice)
#SD
sd(Price)
#3e
hist(Price, main = "Carolla Histogram", xlab = "Price")