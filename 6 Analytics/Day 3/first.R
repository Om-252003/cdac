#### Skewness ####

mode <- function(v) {
  y = table(v)
  return (as.numeric(names(y)[which(y == max(y))]))
}

sd <- function(x) {
  xbar = mean(x)
  deviations = sum((x - xbar)^2)
  N = length(x)
  sd = sqrt(deviations/N)
  coefficient_of_variation = (sd / xbar) * 100
  return (sd)
}


skew <- function(x) {
  skewness = ( mean(x) - mode(x) ) / sd(x)
  return (skewness)
}

v = sample(1:10, 20, replace = T)
skew(v)
sort(v)


# > v
# [1]  8  4  5  3  2 10  2  1  5  4  1 10  6  3  8  8  7  8  5  2

# > sort(v)
# [1]  1  1  2  2  2  3  3  4  4  5  5  5  6  7  8  8  8  8 10 10

# > mean(v)
# [1] 5.1

# > mode(v)
# [1] 8

# > sd(v)
# [1] 2.826659

# > skew(v)
# [1] -1.025946







#### coefficient of correlation ####

x = sample(1:100, 10, replace = T)
y = sample(1:100, 10, replace = T)



coef_corr <- function(x,y) {
  n = length(x)
  sum_x = sum(x)
  sum_y = sum(y)
  sum_xiyi = sum(x*y)
  sum_xi_sqr = sum(x*x)
  sum_yi_sqr = sum(y*y)
  
  coef = ((n * sum_xiyi) - (sum_x * sum_y)) / 
    (sqrt((n * sum_xi_sqr) - (sum_x ** 2)) * sqrt((n * sum_yi_sqr) - (sum_y ** 2)))
}




#### Regression ####


x = c(15,	12,	16,	13,	17,	14,	18,	11)
y = c(17, 14,	20,	25,	23,	24 ,22 ,21)

reg = lm(y~x)  ; reg


#### ####
for mtcars dta, build a relation which will help to predict disp by help of 
attach(mtcars)
predict()





























































































































































