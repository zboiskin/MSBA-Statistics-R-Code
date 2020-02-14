#1
#a
#mean of .03, sd of .07, probability of at least .12?
1 - pnorm(.12,.03,.07)
#b
#sample st. dev
pop_st_dev <- 7
sample_size <- sqrt(15)
pop_st_dev/sample_size

#c
#probability of the sample 15 traders making at least 12%
#step 1 get the z score for sample
x <- 12
mean <- 3
stdev <- 7
n <- 15
sample_z <- (x-mean)/(stdev/sqrt(n))
print(sample_z) #4.97955
#step 2, plug in z score to get probability
1 - pt(4.97955, df=14)

#e at least 7%
x <- 7
mean <- 3
stdev <- 7
n <- 15
sample_z <- (x-mean)/(stdev/sqrt(n))
print(sample_z)
1 - pt(2.21, df=14)

#f less than 0%
x <- 0
mean <- 3
stdev <- 7
n <- 15
sample_z <- (x-mean)/(stdev/sqrt(n))
print(sample_z)
pt(-1.65985, df=14)

#g more than 6%
x <- 6
mean <- 3
stdev <- 7
n <- 15
sample_z <- (x-mean)/(stdev/sqrt(n))
print(sample_z)
1 - pt(1.65985, df=14)

#h above or below 3%
x <- 6
mean <- 3
stdev <- 7
n <- 15
sample_z <- (x-mean)/(stdev/sqrt(n))
print(sample_z)
(1 - pt(-1.65985, df=14)) - (1 - pt(1.65985, df=14))

#i
qt(.90, df=14) # =1.34
pt(1.34, df=14)
  
