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



# *******************************************************

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





























































































