library(readr)
library(readxl)
diamond <- Copy_of_Diamonds
hist(diamond)
as.numeric(diamond)

?power.t.test
power.t.test(30,2,4)
power.t.test(d=(10-8),sd = 4,power=.95,sig.level=.01,type="two.sample",alternative="two.sided")


diamond <- read.csv("C:\\Users\\zbois\\Desktop\\MS Program\\MSBA70300 Stats 1\\R Docs\\R Spreadsheets\\Diamonds.csv")

diamond$Price <- diamond[,1]
hist(diamond$Price)

install.packages("rmarkdown")
install.packages("tinytex")
