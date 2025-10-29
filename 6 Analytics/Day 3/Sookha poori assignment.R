#### Section A ####

# 1. Vectors – Basics
# (a) Create a numeric vector of 10 elements.
# (b) Find its mean, median, and standard deviation.
# (c) Replace all even numbers with NA.
# (d) Remove NA values and display the final vector.

a = 1:10

cat("mean = ", sum(a) / length(a))

if (length(a) %% 2 == 0 ){
  cat("median = ", (a[length(a)/2]+a[length(a)/2+1])/2)
} else{
  cat("median = ", a[length(a)/2])
}

sd <- function(x) {
  xbar = mean(x)
  deviations = sum((x - xbar)^2)
  N = length(x)
  sd = sqrt(deviations/N)
  coefficient_of_variation = (sd / xbar) * 100
  return (sd)
} 

sd(a)

for (i in 1:10){
  if (i %% 2 == 0){
    a[i] = NA
  }
} ; a

a1=vector()
for (i in 1:10){
  if(is.na(a[i])){
    next
  }else{
    a1 = c(a1,a[i])
  }
}
a=a1
a

# *******************************************************

# 2. Vectors – Operations
# (a) Create two vectors x and y of equal length.
# (b) Perform element-wise addition, subtraction, and multiplication.
# (c) Find positions where x > y.
# (d) Display all common elements without using intersect().

x = sample(1:20, 10, replace = T)  
x # 11 19  8  9 11 14  9 12 18 20
y = sample(1:20, 10, replace = T)  
y # 2  6 19 13 16 18 17 14 14 20

cat("addition = ", x+y)
cat("subtraction = ", x-y)
cat("multiplication = ", x*y)

cat("positions where x > y are ",which(x>y))

cat("common elements = ",x[which(x-y == 0)] )



#repeat# *******************************************************

# 3. Factors – Creation
# (a) Create a factor for student grades: A, B, C, A, B, C, A.
# (b) Display the levels.
# (c) Change the order of levels from C < B < A.
# (d) Add a new level "D" and assign it to one observation.

v = c('A','B', 'C', 'A', 'B', 'C', 'A')
f = factor(v) ; f
levels(f)

?levels
levels(f) <- c("C","B","A")
levels(f)

levels(f) <- c(levels(f), "D")
levels(f)

f[1] <- "D"
f

  
  
# ************************************************

# 5. Data Frames – Creation
# (a) Create a dataframe with columns: Name, Age, Gender, Marks.
# (b) Add a new column Result with “Pass” if Marks > 50, otherwise “Fail”.
# (c) Display only students who passed.
# (d) Find the mean Marks of male and female students separately.


name = letters[1:6]  ; name
age = rep(21, 6)  ; age
gender = rep(c("male", "female"), 3)  ; gender
marks = sample(1:100, 6, replace = T)  ; marks

df = data.frame(name,age,gender,marks)  ; df
attach(df)
df$result = ifelse(marks>50 , "pass", "fail")  ; df

?data.frame
passed=  subset(df, marks > 50)  ; passed

marksMale = vector()
 for ( i in subset(df, gender == "male" , select = marks) ){
   marksMale = c(marksMale, i)
 }

cat("mean marks of male = ",( sum(marksMale) / length(marksMale )))

marksFeMale = vector()
for ( i in subset(df, gender == "female" , select = marks) ){
  marksFeMale = c(marksFeMale, i)
}

cat("mean marks of female = ",( sum(marksFeMale) / length(marksFeMale )))

# ************************************************************



# 9. Control Statements – if else
# (a) Write an R program that takes a number and checks if it is positive, negative, or zero.
# (b) Modify it to also check if the number is even or odd.
# (c) Display all results in one message using cat().


x = as.numeric(readline("Enter a number : "))
ifelse(x>1, "Positive", ifelse(x<0, "negative", "zero"))
ifelse(x%%2 == 0, "even", "odd")

cat(c(ifelse(x>1, "Positive", ifelse(x<0, "negative", "zero")),"and",ifelse(x%%2 == 0, "even", "odd") ))

# *******************************************************

#### Section B ####

# 1. Vectors – Logical & Indexing
# (a) Create a numeric vector of 20 random integers between 1 and 50.
# (b) Replace all numbers divisible by both 3 and 5 with their square.
# (c) Extract all prime numbers from the vector.
# (d) Find sum of all elements greater than the mean.

a = sample(1:50, 20, replace=T)

for (i in 1:20){
  if ((i %% 3 == 0) & (i %% 5 == 0)){
    a[i] = a[i]^2
  }
} ; a

isprimee <- function(n) {
  if (n <= 1) return(FALSE)
  for (i in 2:floor(n / 2)) {
    if (n %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}
primes = vector()
for (i in a){
  if(isprimee(i)){
    primes <- c(primes , i)
  }
}
primes

amean = sum(a) / length(a)
cat("sum of elements greater than mean = ", sum(a[which(a>amean)]))


# *********************************************************************

# 9. Control Statements – Nested if
# (a) Accept a numeric input temp (temperature).
# (b) Display messages:
#   temp > 40 → "Too Hot",
# temp < 10 → "Too Cold",
# 10–40 → "Pleasant Weather".
# (c) Add condition to display "Rainy Day" if temperature between 20–25
# and divisible by 5


temp = as.numeric(readline("Enter temperature : "))

if(temp>40) "hot"
if(temp<10) "Too cold"
if(temp<40 & temp>10) "Pleasant Weather"

if(temp<=25 & temp>=20 & temp %% 5 == 0) " Rainy Day"

# ***********************************************************************


# 11. Loops – Nested
# (a) Use nested loops to print the following pattern:
#   *
#   * *
#   * * *
#   * * * *
#   (b) Modify the same loop to print numbers instead of stars.


for(i in 1:4){
  for (j in 1:i){
    cat(" * ")
  }
  cat("\n")
}

cnt = 1
for(i in 1:4){
  for (j in 1:i){
    cat(" ", cnt, " ")
    cnt = cnt+1
  }
  cat("\n")
}


# *********************************************************

# 16. Functions – Using Loops
# (a) Create a function that takes a number n and prints multiplication table up to 10.
# (b) Modify it to store results in a vector and return that vector.
# (c) Call function for n = 7


tables <- function(n) {
  for ( i in 1:10){
    cat(n ,"x ",i," = ", n*i, "\n")
  }
}  ; tables(7)
tab = vector()
tables2 <- function(n) {
  for ( i in 1:10){
    tab = c(tab, n*i)
  }
  return (tab)
}
tables2(7)


#### Section C ####


# 1. mtcars Dataset
# (a) Display the first and last 5 rows.
# (b) Find how many cars have mpg > 25.
# (c) Calculate mean horsepower (hp) by number of cylinders (cyl).
# (d) Create a scatter plot of mpg vs hp with red points.

View(mtcars)
attach(mtcars)

df = mtcars

df[1:5,]

count(subset(df, mpg > 25)$mpg) 



?plot
plot(mpg, hp , col = "red", main ="mpg vs hp")



# ****************************************************************

# 2. mtcars – Filtering & Sorting
# (a) Extract cars with 6 cylinders and automatic transmission (am = 0).
# (b) Find the car with maximum mileage (mpg).
# (c) Sort the dataset by descending horsepower.
# (d) Plot a bar chart of mpg for the top 5 most fuel-efficient cars.

names(df)
cars_with_6_cyl_am_0 = rownames(subset(df, (mpg > 25 & am == 0)))
cat("cars with 6 cylinders and automatic transmission 0 are : ", cars_with_6_cyl_am_0 )

maxi = max(mpg)
car_with_max_mpg = rownames(subset(df, mpg == maxi))
cat("cars with  maximum mileage (mpg) are : ",car_with_max_mpg  )


# ********************************************************************************

# 6. Karl Pearson & Spearman Correlation 
# (a) Create two numeric vectors x and y (e.g., student marks and hours studied). 
# (b) Compute Pearson correlation and interpret strength & direction. 
# (c) Compute Spearman rank correlation and explain difference. 
# (d) Plot both variables and add regression line using abline(lm(y ~ x)).

marks = seq(10,100,10)
hrs = 1:10


?cor
cor(marks,hrs)
cor(marks,hrs, method = "spearman")
plot(marks,hrs)
abline(lm(hrs~marks), col="red")

# 3. iris Dataset
# (a) Display the structure and summary of the dataset.
# (b) Find the mean Sepal.Length for each Species.
# (c) Plot a boxplot comparing Petal.Length across species.
# (d) Create a scatter plot of Sepal.Length vs Petal.Length with color-coded species.
# 

View(iris)
str(iris)
# summarise(iris) # data frame with 0 columns and 1 row # IDK why it is giving that 
summary(iris)

iris_new = iris %>% 
  group_by(Species) %>%
  mutate(m = mean(Sepal.Length)) %>%
ungroup()
iris_new

?boxplot()
# Boxplot of Petal.Length across Species
boxplot(Petal.Length ~ Species, 
        data = iris, 
        main = "Boxplot of Petal.Length by Species",
        xlab = "Species", 
        ylab = "Petal Length (cm)", 
        col = c("lightblue", "lightgreen", "lightpink"),
        horizontal = T)






#### Section D ####
# 1. Central Tendency – Manual & Built-in
# (a) Create a numeric vector of 20 values representing monthly expenses of families.
# (b) Calculate mean, median, and mode (write your own function for mode).
# (c) Compare all three measures and comment on the data’s skewness.
# (d) Plot a histogram and mark mean and median using vertical lines.

set.seed(2)
ex = sample(10000:20000, 20, replace = T)
ex


Mean <- function(x) {
  return (sum(x)/ length(x))
}
meanex = Mean(ex)

Median <- function(x) {
  x <- sort(x)
  N = length(x)
  if (length(x)%%2==0){
    return (Mean(c(x[N/2],x[(N/2)+1])))
  }
  else{
    return (x[N/2])
  }
}

medianex = Median(ex)


?which
Mode <- function(x) {
  unique_vals = unique(x)
  freqs = tabulate(match(x,unique_vals))
  
  unique_vals[freqs == max(freqs)]
}


mode <- function(v) {
  y = table(v)
  return (names(y)[which(y == max(y))])
  
}

modex = Mode(ex)

skew <- function(x) {
  skewness = ( mean(x) - mode(x) ) / sd(x)
  return (skewness)
}

if (meanex>medianex) {
  print("Data is positively skewed")
}else if (meanex < medianex) {
  print("Data is negatively skewed")
}else {
  print("Data is symmetric")
}



hist(ex, 
     main="Histogram of expenses",
     xlab = "Expenses",
     col = "skyblue"
     )
abline(v = meanex, col = "red", lwd=2)
abline(v = medianex, col="blue", lwd =2)


# 2. Dispersion – Range, Variance, and SD
# (a) Create a vector of students’ marks (20 observations).
# (b) Calculate the range, variance, standard deviation, and interquartile range (IQR).
# (c) Compute the coefficient of variation (CV) = (SD / Mean) × 100.
# (d) Interpret the CV — is data more or less consistent?

set.seed(1)
marks = sample(10:100, 20, replace = T)  ; marks

range = max(marks)-min(marks)   ; range


SD <- function(x) {
  xbar = mean(x)
  N = length(x)
  deviations = sum((x-xbar)^2)
  
  sds = sqrt(deviations/N)
  return (sds)
}
SD(marks)

cat(sd(marks))

variance = SD(marks)**0.5  ; variance

iqr <- function(x) {
  q3 = quantile(x, 0.75)
  q1 = quantile(x, 0.25)
  return (q3-q1)
}

iqr(marks)

coefficient_of_variation = (SD(marks) / mean(marks)) * 100.

cat("coefficient of variance is ", coefficient_of_variation, "\nwhich means the data is less consistent")

boxplot(marks,
        main = "Boxplot of Marks",
        ylab = "Marks",
        col = "skyblue",
        border = "darkblue",
        horizontal = T)

hist(marks,
     main = "Histogram of Marks",
     xlab = "Marks",
     col = "tomato",
     border = "white")
abline(v = mean(marks), col = "blue", lwd = 2, lty = 2)


# *************************************************************


# 4. Using Built-in Dataset – mtcars (a) Calculate the mean, median, and
# standard deviation of mpg, hp, and wt. (b) Find the range and interquartile
# range of mpg. (c) Compute coefficient of variation for all three variables.
# (d) Create a boxplot comparing mpg and hp side by side and comment on spread.
# 


attach(mtcars)
df = mtcars
head(df,5)

mean(mpg)
mean(hp)
mean(wt)
median(mpg)
median(hp)
median(wt)
cat(sd(mpg))
cat(sd(hp))
cat(sd(wt))

range_mpg = max(mpg)-min(mpg)  ; range_mpg

IQR = quantile(mpg, 0.75)-quantile(mpg, 0.25)  ; IQR

coef_of_variance_mpg = (sd(mpg) / mean(mpg))*100  ; coef_of_variance_mpg
coef_of_variance_hp = (sd(hp) / mean(hp))*100 ; coef_of_variance_hp
coef_of_variance_wt = (sd(wt) / mean(wt))*100  ; coef_of_variance_wt

?boxplot
boxplot(mpg,hp,
        names = c("mpg", "hp"),
        col = c("lightblue", "lightgreen"),
        horizontal = T)

IQR_hp = quantile(hp, 0.75)-quantile(hp, 0.25)  ; IQR_hp

IQR_mpg = quantile(mpg, 0.75)-quantile(mpg, 0.25)  ; IQR_mpg

spread_hp = IQR_hp / (max(hp)-min(hp))  ; spread_hp
spread_mpg = IQR_mpg /(max(mpg)-min(mpg))  ; spread_mpg

# absolute spread of hp is more
# relative spread of mpg is more


# ********************************************************************
# 5. Correlation & Covariance – iris Dataset
# (a) Compute the correlation between all numeric columns using cor().
# (b) Display covariance matrix using cov().
# (c) Identify which pair of variables are most strongly correlated.
# (d) Plot a scatterplot matrix using pairs() 
attach(iris)

cor_matrix = cor(iris[, 1:4])  ; cor_matrix

cov_matrix = cov(iris[, 1:4])  ; cov_matrix

# 6. Karl Pearson & Spearman Correlation
# (a) Create two numeric vectors x and y (e.g., student marks and hours studied).
# (b) Compute Pearson correlation and interpret strength & direction.
# (c) Compute Spearman rank correlation and explain difference.
# (d) Plot both variables and add regression line using abline(lm(y ~ x)).


x <- c(2, 3, 4, 5, 6, 7, 8, 9, 10, 12)  ;  x
y <- c(50, 55, 56, 60, 65, 68, 72, 74, 78, 85)  ;  y


spearman_cor = cor(marks,hrs)  ; spearman_cor

pearson_cor = cor(marks,hrs, method = "pearson") ; pearson_cor


plot(x,y, col = "blue", pch = 18)
abline(lm(y~x), col = "red", lwd = 2)



# 7. Realistic Data Analysis
# (a) Create a dataframe with 3 numeric columns: Income, Expenditure, Savings.
# (b) Calculate mean, SD, and CV for all three.
# (c) Check correlation among the variables.
# (d) Create a scatter plot of Income vs Expenditure with regression line and add correlation coefficient
# on plot.

set.seed(2)
inc = sample(50000:100000, 10, replace = T)  ; inc
set.seed(2)
exp = sample(30000:40000, 10, replace = T)  ; exp
sav = inc - exp  ; sav

df = data.frame(inc, exp,sav)  ; df

attach(df)
mean(inc)
mean(exp)
mean(sav)

sd(inc)
sd(exp)
sd(sav)

sd(inc) / mean(inc) * 100
sd(exp) / mean(exp) * 100
sd(sav) / mean(sav) * 100


cor(df[, 1:3])

plot(inc,exp,
     col = "blue",
     pch = 19)

abline(lm(exp~inc), col = "red", lwd = 2)
text(x = min(inc) + 5000, y = max(exp) - 500,
     labels = paste("r =", round(cor(inc, exp), 3)),
     col = "darkred", cex = 1.2)









































