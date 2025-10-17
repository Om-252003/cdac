#### Extra ####
# > class(10L / 1L)
# [1] "numeric"
# > class(10L %/% 1L)
# [1] "integer"


#### Mode ####

# unlike mean and median mode, doesn't have its in-buit function

mode <- function(v) {
  y = table(v)
  return (names(y)[which(y == max(y))])
  
}

v1 = c( sample(1:10, 10, replace = T)  )
mode(v1)

#### Measures of Dispersion ####

x = sample(1000:2000, 50)

quantile(x, c(0.25,0.50,0.75)) # quartiles
quantile(x, seq (0 ,1 , 0.1))  # deciles
quantile(x, seq (0 ,1 , 0.01)) # percentiles


q1 = (1*length(x)) / 4
q3 = (3*length(x)) / 4
IQR =  q3 - q1  ; IQR
QD = (q3 - q1) / 2  ; QD
coeff_of_QD = (q3-q1) / (q3+q1)  ;coeff_of_QD


#### BoxPlot ####

?boxplot
View(airquality)
air <- airquality
attach(air)
boxplot(Ozone, main = "Ozone", col = "green", border = "red")
        
a = boxplot(Ozone, main = "Ozone", col = "green", border = "red", horizontal = T)

boxplot(Ozone, main = "Ozone", col = "green", border = "red", horizontal = T, notch = T)

a



# $stats
# [,1]
# [1,]   1.0    # min value in data
# [2,]  18.0    # Q1
# [3,]  31.5    # Q2
# [4,]  63.5    # Q3
# [5,] 122.0    # Q4
# 
# $n            # length of data
# [1] 116       
# 
# $conf         # confidence of something????
# [,1]
# [1,] 24.82518
# [2,] 38.17482
# 
# $out          # outliers
# [1] 135 168

# $group
# [1] 1 1
# 
# $names
# [1] ""

#### Array ####

# Object that can store multidimensional data

# array(data, dim = c(2,3,4) , dimnames = list() )   2 by 3 che 4 matrices

?array
arr = array ( paste0(letters[1:24],1:24, sep="-" ), c(2, 3, 4), dimnames = list(c("a", "b"), c("A", "B", "C"), c("M1","M2",'M3','M4')))
arr

# accessing

arr[3 , 2 , 1]      # row , column , matrix 
# 2nd row of 1st and 2nd matrix
arr[2 , , c(1,2)]
# OR
arr[2,,1:2]

#### Standard Deviation ####


sd <- function(x) {
  xbar = mean(x)
  deviations = sum((x - xbar)^2)
  N = length(x)
  sd = sqrt(deviations/N)
  coefficient_of_variation = (sd / xbar) * 100
  return (paste("sd = ", sd , "and", 'coefficient of variance = ', coefficient_of_variation))
}

v = c(12,17,15,11,25)
sd(v)


#### Practice question ####

raw = c( 52, 57, 49, 48, 35, 37, 37)

mean = sum(raw) / length (raw)

if (length(raw) %% 2 == 0){
  median = (raw[length(raw)/2] + raw[length(raw)/2+1]) / 2
} else{
  median = raw[(length(raw)+1)/2]
}

tab = table(raw)
mode = names(tab)[which(tab==max(tab))]
Range = max(raw) - min(raw)
coef_or_range = ( max(raw) - min(raw) ) / ( max(raw) + min(raw) ) 
q1 = length(raw) / 4
q3 = (3 * length(raw))/4











