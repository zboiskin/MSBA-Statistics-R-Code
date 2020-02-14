qnorm(c(.25,.75))
#1a
x <- c(4376+3814+2717+5578+4495+4920+4798+6446+4119+4237)
45500/10

#1b population st. dev
x <- c(4376,3814,2717,5578,4495,4920,4798,6446,4119,4237)
sd(x)
#1c
y <- x - 4550
z <- y^2
sum(z)
sqrt(906862)


-10/40
f <- sqrt(40)
q <- 40000/f
-10000/q

#4
#area for z distribution, middle 50%
qnorm(.25)
qnorm(.75)

#calculate sd
x <- sqrt(30)
500*x
x/.67
#sd = 8.17

#plugging in to get new z score for 60 and 120
y <- sqrt(60)
8.17/y
500*y
3872.983/.67

pnorm(5780.572)

#Q5
#a

pt(abs(1.58), df=39)

1-pt(abs(1.58), df=39)

2*(1-pt(abs(1.58), df=39))


#b
(107000-117000)/(25000/(sqrt(40)))
top <- (107000-117000) 
bottom <- 25000/6.324555
top/bottom

2*(1-pt(abs(2.53), df=39))

#c
top2 <- -4000
bottom2 <- 40000/10
top2/bottom2

#d
pt(-1, df=100)

#7
#a
top3 <- 175-183
r <- sqrt(30)
top/(50/r)

2*(1-pt(abs(-.8765), df=29))

#b
top3 <- 175-183
r2 <- sqrt(50)
top/(50/r2)

2*(1-pt(abs(1.13), df=49))

#c
top3 <- 175-183
r3 <- sqrt(100)
top/(50/r3)

2*(1-pt(abs(1.6), df=99))

#d
qnorm(c(.025,.975), 183, 50)

#e
qt(p=c(.025, .975), df=99)

#f
qnorm(.95, 183,50)
