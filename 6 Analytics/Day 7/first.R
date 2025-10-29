?dbinom
dbinom(6,10,0.9)
sum(dbinom(7:10,10,0.9))
sum(dbinom(6:8,10,0.9))
dbinom(10,10,0.9)


dbinom(1,4,0.8)
sum(dbinom(3:4, 4,0.8))
sum(dbinom(2:3, 4,0.8))
dbinom(0, 4,0.8)


?dpois
dpois(2,5)
dpois(3,5)
1 - sum(dpois(0:3, 5))
sum(dpois(0:2, 5))

dpois(0,2)
dpois(1,2)
dpois(2,2)
1 - sum(dpois(0:1, 2))


?rbinom
m = rbinom(1000, 10, 0.5) # generate random samples from binomial distribution of size 10 with prob of 0.5
m
a = table(m)
plot(a,type='l')


# install.packages("BSDA")
library(BSDA)

# A machine fills 20 packets of sugar (in grams):
  
  data <- c(1002, 995, 1005, 998, 1007, 1010, 999, 1008, 1003, 1006, 995, 999, 1001, 1004, 1009, 1002, 1003, 1005, 1006, 1000)

# Population o 5 grams.
# 
# Test at a 0.05 whether the population mean weight is 1000
# 
# grams.
# 
# Solution

#Ηο: μ = 1000 #H₁: μ 1000 install.packages("BSDA")


#perform one sample z-test

z.test(data, mu=1000, sigma.x=15)

# p-value = 0.0108
# if p-value < 0.05 reject h0
# here p-value is 0.0108 hence we are rejecting h0 and 
# concluding that mean in not 1000

# ***********************************************************

fertilizer1 = c(50,52,48,47,53,51,49,52,50,54)
fertilizer2 = c(48,49,47,46,50,48,49,47,46,48)

# known population sigma = 3 for both
# 
# Test at alpha = 0.05 whether fertilizers give different average yields
# 
# H0 => mu1 = mu2
# H1 => mu1 != mu2

z.test(fertilizer1,fertilizer2, mu = 0, sigma.x = 3, sigma.y=3)

# p-value = 0.03689
# reject H0 both mean are not equal


# ****************************************************************

# A shopkeeper claims that average weight of his 50 choco bars is 50g
# a sample of 15 bars is given

data = c(49,52,50,48,51,47,53,49,50,52,48,49,51,50,47)

# test H0 : mu = 05 
# test H1 : mu != 50
# at alpha = 0.05

t.test(data, mu=50)

# p-value = 0.5816
# we reject H1 and conclude average weight is 50gms

# format(0.5816, scientific = T)  "5.816e-01"


# two sample t test : unpaired independent
# consider x and y ,x is height of soldiers y is height of sailors check is there is significant difference between testInheritedMethods(
#   H0 : mu1 = mu2
  
x = c(63,65,68,69,71,72)
y = c(61,62,65,66,69,70,71,72,73)

t.test(x,y,mu=0,paired=F)


# ******************************************************
# students scores before and after training 
before = c(68,70,65,72,74,69,71,67,73,70)
after =  c(75,78,72,76,80,77,74,73,78,76)

t.test(before,after,mu=0,paired=T)
sum(before)
sum(after)

format(1.013e-06, scientific = F)















