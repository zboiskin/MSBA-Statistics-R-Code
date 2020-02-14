#4
Fedex <- c(2.5,3.5,2.5,7.2,4.72,3,3.7,5.1,2.9,3.95)
Ups <- c(2.1,4.24,3.01,5.2,3.1,3.3,2.2,2.95,2.6,1.9)
sd(Fedex)
mean(Fedex)
sd(Ups)
mean(Ups)

?t.test
t.test(Fedex,Ups,paired = TRUE)

#6
deluxe <- c(39,39,45,38,40,39,35)
standard <- c(27,28,35,30,30,34,29)
difference <- deluxe - standard
mean1diff <- mean(difference)
sd1 <- sd(difference)
sd1/(sqrt(7))
(8.8-10)/.986
t.test(deluxe,standard, paired = TRUE)

#9
memphis <- c(9.1,8.3,15.1,9.1,8.8,6,10,5.8,7.5,12.1,10.5,9.3)
louis <- c(4.7,2.2,5,4.1,4.2,2.6,3.3,3.4,5.5,7)
mmemphis <- mean(memphis)
mlouis <- mean(louis)
mmemphis - mlouis
sd(memphis)
sd(louis)
t.test(memphis,louis,paired=FALSE)

#10
power.t.test(delta = 30, sd = 30, sig.level = .05, power = .9, type = "two.sample", alternative = "two.sided")
