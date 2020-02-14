#1
#what is the probability of z < -.25
pnorm(-.25)
#what is the probability of z < -1.96
pnorm(-1.96)
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
#
c <- 1-pnorm(.15)
d <- 1-pnorm(.35)
c-d

#2
#mean of 50, sd of 10, probability of getting <65?
#((65-50) /10)) = 1.5 z score
pnorm(1.5)

#3
#50th percentile of mean 50, sd 10
qnorm(.5,50,10)
#lower 25th percentile of mean 50, sd 10
qnorm(.25,50,10)
#95th percentile of mean 50, sd 10
qnorm(.95,50,10)
#area greater than, and less than (tails) 95th percentile bracket
qnorm(c(.025,.975),50,10)
#area greater than and less than (tails) 99th percentile bracket
qnorm(c(.005,.995),50,10)

#4
# mean of 1,000,000, sd of 30,000, probability of 70,000+?
#z score 1,070,000 - 1,000,000/30,000
pnorm(2.33)
# mean of 1,000,000, sd of 30,000, probability of losing or gaining 25,000?
pnorm(-.833)
#+
1 - pnorm (.833)
#mean of 1,000,000, sd of 30,000, probability between 1,010,000 and 1,050,000
pnorm(.333) #zscore of 1,010,000
pnorm(1.67) #z score of 1,050,000
(pnorm(1.67) - pnorm(.333)) #area between
#values for middle 95%
qnorm(c(.025,.975), 1000000, 30000)

#5
#mean 160, sd 25, probability will sell out w/150 phones?
1 - pnorm(150,160,25)
#mean 160, sd 25, probability will sell out w/175 phones?
1 - pnorm(175,160,25)
#mean 160, sd 25, probability will sell at least 225 phones?
1 - pnorm(225,160,25)
#mean 160, sd 25, how many phones should be on hand w/10% chance of selling out
qnorm(.90,160,25)
#mean 160, sd 25, how many phones should be on hand w/1% chance of selling out
qnorm(.99,160,25)
#mean 160, sd 25, how many phones should be on hand for middle 95%
qnorm(c(.025,.975),160,25)
