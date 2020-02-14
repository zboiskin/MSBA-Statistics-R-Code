df <- iris

#find the standard deviation
sd(iris$Sepal.Length)

#finding percentilea
quantile(iris$Sepal.Length, c(.01,.05,.10,.25,.50,.75,.90,.95,.99))

#variance
var(iris$Sepal.Length)


############## QNORM ################ # input the percentile probability to get the value associated with that percentile/probability
#10th percentile of a normal distribution, default is sd and mean of 1
qnorm(.10)
#10th percentile with mean 100 and sd 10
qnorm(.10,100,10)
#middle bracket value of 90%, split 10% into 5% on either side
qnorm(c(.05, .95))

#lower 25th percentile of mean 50, sd 10
qnorm(.25,50,10)
#95th percentile of mean 50, sd 10
qnorm(.95,50,10)
#area greater than, and less than (tails) 95th percentile bracket
qnorm(c(.025,.975),50,10)
#area greater than and less than (tails) 99th percentile bracket
qnorm(c(.005,.995),50,10)

############# PNORM ################# # input the z/t score to get the probability or input the given value to get probability. expressed as %

#probability to get a value of 80 with mean of 100 and sd of 10
pnorm(80,100,10)

#what is the probability of z < -2.57
pnorm(-2.57)
#what is the probability of z > .84
1 - pnorm(.84)
#what is the probability of -1.96 < z < 1.96
x <- 1 - pnorm(-1.96)
y <- 1 - pnorm(1.96)
x-y
# probability of -.2 < z < -.05 OR .15 < z < .35 
a <- 1-pnorm(-.2)
b <- 1-pnorm(-.05)
a-b
# probability of -.2 < z < -.05 OR .15 < z < .35 
a <- 1-pnorm(-.2)
b <- 1-pnorm(-.05)
a-b

#mean of 1,000,000, sd of 30,000, probability between 1,010,000 and 1,050,000
pnorm(.333) #zscore of 1,010,000
pnorm(1.67) #z score of 1,050,000
(pnorm(1.67) - pnorm(.333)) #area between

#mean 160, sd 25, probability will sell AT LEAST 225 phones?
1 - pnorm(225,160,25)

#mean of .03, sd of .07, probability of at least 12%?
1 - pnorm(.12,.03,.07)

################ PT ################ probability for sample expressed as % when tscore is input
#Given mean is 3 and stdev is 7 and n = 15
#at least 7%
x <- 7
mean <- 3
stdev <- 7
n <- 15
sample_z <- (x-mean)/(stdev/sqrt(n))
print(sample_z)
1 - pt(2.21, df=14)

#less than 0%
x <- 0
mean <- 3
stdev <- 7
n <- 15
sample_z <- (x-mean)/(stdev/sqrt(n))
print(sample_z)
pt(-1.65985, df=14)

#more than 6%
x <- 6
mean <- 3
stdev <- 7
n <- 15
sample_z <- (x-mean)/(stdev/sqrt(n))
print(sample_z)
1 - pt(1.65985, df=14)

#at least 90th percentile
qt(.90, df=14) # =1.34
pt(1.34, df=14)

#################### QT ################## critical values

#b critical value for two sided 99% with sample 16 
qt(.995, df=15)
#c critical value for two sided 90% with sample 16 
qt(.95, df=15)

power.t.test(delta = 30, sd = 30, sig.level = .05, power = .9, type = "two.sample", alternative = "two.sided")

power.t.test(d=(10-8),sd = 4,power=.95,sig.level=.01,type="two.sample",alternative="two.sided")

power.t.test(n=30, delta=2, sd=4, sig.level = .05, type = "one.sample",alternative = "one.sided")

#probability once a t statistic is caluculated. t value = 1.58, n = 40

#upper area
pt(abs(1.58), df=39)
#lower tail
1-pt(abs(1.58), df=39)
#total area of 2 tails
2*(1-pt(abs(1.58), df=39))
#area in between
1-2*(1-pt(abs(1.58), df=39))

