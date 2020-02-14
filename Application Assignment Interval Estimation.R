#1
#b critical value for two sided 99% with sample 16 
qt(.995, df=15)
#c critical value for two sided 90% with sample 16 
qt(.95, df=15)

#3
#a standard error with sample 49, st.dev 5.72
5.72/sqrt(49)
#b margin of error at 95%
crit_value <- qt(0.975, df=48)
#standard error * crit value
.817*crit_value
#c crit value for 95%
qt(.95, df=48) # = 1.67
24.80 + 1.67
24.80 - 1.67

#4
#a standard error with sample 100, st dev 3.5
3.5/sqrt(100)
#b 99% confidence what is the margin of error
crit_value2 <- qt(.99,df=99)
#standard error * crit value
.35*crit_value2
#c 99% CI
8.5 + .901 #.901 is margin of error
8.5 - .901
