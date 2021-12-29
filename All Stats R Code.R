library(tidyverse)

df <- iris

#creating your own table if you want to use your own data
X1 <- c(102, 104, 101, 93, 100)  
X2 <- c(17, 19, 21, 18, 15)
X3 <- c(4, 5, 7, 1, 3)

X <- cbind(X1, X2, X3)

#find the standard deviation
sd(iris$Sepal.Length)

#finding percentilea
quantile(iris$Sepal.Length, c(.01,.05,.10,.25,.50,.75,.90,.95,.99))

#variance
var(iris$Sepal.Length)

#descirptives summary all in a nice bundle
df %>% 
  group_by(Species) %>% 
  summarise(mean = mean(Sepal.Length),
            median = median(Sepal.Length),
            sd = sd(Sepal.Length),
            n=length(Sepal.Length),
            Pct1  = quantile(Sepal.Length, probs=c(.01)),
            Pct5  = quantile(Sepal.Length, probs=c(.05)),
            Pct10 = quantile(Sepal.Length, probs=c(.1)),
            Pct90 = quantile(Sepal.Length, probs=c(.90)),
            Pct95 = quantile(Sepal.Length, probs=c(.95)),
            Pct99 = quantile(Sepal.Length, probs=c(.99)),
            IQR = IQR(Sepal.Length))


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

#Power t test for inputting data manually 
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

########## T-tests ############
#when given multiple variables but you only want to compare 2 process

#start by iscolating data of interest, in this case species setosa and versicolor
setosa <- iris[iris$Species == "setosa", ]
versicolor <- iris[iris$Species == "versicolor", ]

#performing the t test
t.test(x = setosa$Petal.Length, y = versicolor$Petal.Length)

#options to add alt hypothesis of "less" , "greater" and change confidence interval
t.test(x = setosa$Petal.Length, y = versicolor$Petal.Length, alternative = "less", conf.level = .90)



##### Stats 2 Topics #########
df <- iris
library(tidyverse)
########### ANOVA ###################

# Here we use the aov (analysis of variance) function,  
iris_anova <- aov(df$Sepal.Length ~ df$Species, data=df)

# The ANOVA model now exists as an object called "Model." We then summarizes that object. 
summary(iris_anova)

# More details/other information is available by calling the linear model summary method 
# For example, notice the R^2 values, which tells you how much variance is between groups (relative to between + within))
summary.lm(iris_anova)

# Here is an alternative specification for a one-way. 
oneway.test(df$Sepal.Length ~ df$Species, data=df)

#Tukey HSD for multiple comparisons
TukeyHSD(iris_anova)

###### Chi Square ########
#test for independence starts with making desired data into a table, in this case the median sepal length by species
sep_size <- ifelse(df$Sepal.Length < median(df$Sepal.Length), "small", "big")
table(df$Species, sep_size)

#chi sq
chisq.test(table(df$Species, sep_size))
#low p value means they are NOT independent 

#Goodness of fit, observed frequencies vs expected proportions
observed <- c(1752, 1885, 1455, 1698)
expected <- c(.25, .25, .25, .25)
chisq.test(x = observed, p = expected)

#### Multiple Repression #######
#simple 2 variable correlations for exploration
cor.test(~ df$Sepal.Length + df$Sepal.Width, data=df)

#nonsense comparison but the process still
lm_iris <- lm(df$Petal.Width~1 + df$Sepal.Length + df$Sepal.Width + df$Petal.Length , data=df)
summary(lm_iris)

#pairwise matrix
pairs(data=df, ~ Petal.Width + df$Sepal.Length + df$Sepal.Width + df$Petal.Length)


#### MISC #####

#useful code example to get categorical data into binary
df1 <- df %>% 
  mutate(Group = as.factor(Species),
         setosa = ifelse(Group=="setosa", 1, 0),
         versicolor = ifelse(Group=="versicolor", 1, 0),
         virginica = ifelse(Group=="virginica", 1, 0))
