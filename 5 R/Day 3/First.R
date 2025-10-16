#### List ####

# List is R obejct which contains elements of different type like : 
# numbers, vector and another list also

# Matrix and functions are also eligible for being stored

# list is created using list() function

# list doesn't have dimensions it is linear because it can store other sequences in it

?list

l1 = list(1,2,3,4.1,'Abc', TRUE, FALSE, NA,NULL,
          v1 <- c(10,20), 
          v2<- seq(90,92), 
          Inner_list <- list(80,90), 
          maxi <- max(1,2), 
          m1 <- matrix(c(1,2,3,4), nrow = 2)
          ) # In this syntax : <- , multiple objects are being created 
            # in environment. l1, v1,v2,Inner_list, maxi, m1
l1
class(l1)

names(l1)       # NULL
l1$maxi         # NULL
l1$Inner_list   # NULL

l1 = list(1,2,3,4.1,'Abc', TRUE, FALSE, NA,NULL,
          v1 = c(10,20), 
          v2 =  seq(90,92), 
          Inner_list = list(80,90), 
          maxi = max(1,2), 
          m1 = matrix(c(1,2,3,4), nrow = 2)
) # in this syntax : = only 1 list object is created and all objects 
  # are inside list as objects
l1
names(l1)

# > names(l1)
# [1] ""           ""           ""           ""          
# [5] ""           ""           ""           ""          
# [9] ""           "v1"         "v2"         "Inner_list"
# [13] "maxi"       "m1" 


# ***************************
# Indexing

# cat(l1[1])  # Error in cat(l1[1]) : argument 1 (type 'list') cannot be handled by 'cat'
print(l1[1]) # works  1

# if we want to access elements of vector/list which are 
# inside a list then we use [[]][] as needed,
# else for alone objects/ elements [] is enough

l1[1]    ; l1[[1]]
l1[1][1] ; l1[[1]][1][1][1][1] # infinite [1] works
l1[2]    ; l1[[2]]
l1[3]
l1[4]
l1[5]
l1[6]
l1[7]
l1[8]
l1[9]
l1[10]   ; l1[10][2] # $<NA> NULL  ; 
l1[[10]][1]   # 10
l1[[10]][2]   # 20
l1[[10]][1:2]  # 10 20
l1[11]
l1[12]
l1[13]
l1[14]
l1[15]

# Outpput : 
# > l1[1]    ; l1[[1]]
# [[1]]
# [1] 1
# 
# [1] 1
# > l1[1][1] ; l1[[1]][1][1][1][1] # infinite [1] works
# [[1]]
# [1] 1
# 
# [1] 1
# > l1[2]    ; l1[[2]]
# [[1]]
# [1] 2
# 
# [1] 2
# > l1[3]
# [[1]]
# [1] 3
# 
# > l1[4]
# [[1]]
# [1] 4.1
# 
# > l1[5]
# [[1]]
# [1] "Abc"
# 
# > l1[6]
# [[1]]
# [1] TRUE
# 
# > l1[7]
# [[1]]
# [1] FALSE
# 
# > l1[8]
# [[1]]
# [1] NA
# 
# > l1[9]
# [[1]]
# NULL
# 
# > l1[10]   ; l1[10][2] # $<NA> NULL  ; 
# $v1
# [1] 10 20
# 
# $<NA>
#   NULL
# 
# > l1[[10]][1]   # 10
# [1] 10
# > l1[[10]][2]   # 20
# [1] 20
# > l1[[10]][1:2]  # 10 20
# [1] 10 20
# > l1[11]
# $v2
# [1] 90 91 92
# 
# > l1[12]
# $Inner_list
# $Inner_list[[1]]
# [1] 80
# 
# $Inner_list[[2]]
# [1] 90
# 
# 
# > l1[13]
# $maxi
# [1] 2
# 
# > l1[14]
# $m1
# [,1] [,2]
# [1,]    1    3
# [2,]    2    4
# 
# > l1[15]
# $<NA>
#   NULL


# *******************************

li = list('java','python')  ; li
li2 = append(li,2)  ; li2
li2 = append(li, 2:4)  ; li2

# add element at specified position
li2 = append(li, 'r', after = 2)  ; li2
# **********************************************************
?paste
?paste0
?format
?letters
?LETTERS


200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
# prints 2e+122

format(200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
       scientific = TRUE)
# "2e+122"

format(200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
       scientific = FALSE)
# "200000000000000002880888042006468620002004660820864680040284088246808226628000086480806482684200026840008444680680848284422"

#### Control Statements ####
# *****************************
# if condition

# if(condition){}

x = -1
if(x<0){print(TRUE)}  # TRUE

# if  else

x = -1 
if (x>0) {TRUE} else{FALSE} 

# ********************************************
# For loop

# write the word for and press tab

# for (variable in vector) { }

x<-letters[1:10]

for (i in x) {  print(i) }   # print statement is mandatory

for (j in 1:10) { print(j) }

for (k in 1:22) { print( k*7 ) }

for (i in 1:22) { print( paste0( i , "* 7 = ", i*7 ) ) }

# take input from user and print factorial

n = as.numeric(readline("Enter number: "))
fact = 1
for (i in 1:n){ fact = fact*i }
fact

# ***************************************************************

# While loop

# while (condition) { }

x = 2
while(x<=5)
{
  print(x)
  x = x+1
}

# print sum of first n natural numbres
# sum = (n*(n+1))/2 is the formula but print using loop 

sum = 0 ; i=0
n = as.numeric(readline("Enter n: "))

while(i <= n){
  sum=sum+i
  i=i+1
}
sum

# *******************************************************

# repeat  : it is always used with break

x = 1
repeat{
  print(x)
  x = x+1
  if(x>7) {break}
}   #  prints 1 to 7

# print table of 7 using repeat

x = 7
repeat{
  print(x)
  x = x+7
  if(x>70){break}
}

# ***************************************************************
 
# next  : means skip, it is like continue in other languages

for ( i in 1:10) {
  if (i %% 2 == 0){
    next
  }
  print(i)
}


# ***************************************************************

# Switch      # length of vector that we are passing in switch should be 1
# only character() is allowed 
color = 'red'
switch(color, "red" = "Stop here !",
              "green" = "Go Ahead !", 
              "yellow" = "Wait !",
              "invalid color")


# ***************************************************************

#1 for a given vector x = 15:25, Print number greater than 20

x = 15:25
for (i in x){if(i>20){print(i)}}

#2 Print multiplication table of upto 7*24 but only even multiple

for (i in 1:24){
  if ( (i*7) %% 2 == 0){
    print(paste(i, "x 7 =", (i*7)))
  }
}


#3 Create a numeric vector of length 2 and print its #max element, 
# without using max function

v1 = c(10,20)
ifelse(v1[1]>v1[2], paste(v1[1], "is greater"), paste(v1[2], 'is greater') )

#4 Create a character vector with 5 consonant 
# alphabets and 3 vowels then print all the vowels from this vector using control statement
v2 = c('a','e','i','b','c','d','f','g')
for (i in v2){
  if (i %in% c('a','e','i','o','u'))
  {
    print(i)
  }
}

#5 Create an arithmetic operator calculator using switch
{
  n1 = as.numeric(readline("Enter n1: "))
  n2 = as.numeric(readline("Enter n2: "))
  choice <- menu(c("Add", "subtract", "multiply", 'divide'), 
                 title = "select operation number: ")
}

switch(choice, "1" = paste("sum = ",n1+n2), 
             "2" = paste("subtraction = ",n1-n2), 
             "3" = paste("product = ",n1*n2),
             "4" = paste("quotient = ",n1/n2)
             )

#### User Defined Functions ####

# write fun and press tab

# "local" function is function which is created by yourself i.e. user defined function
# "global" function is function already present in global package

# fun = function(arguments){}
# class of function is "function"
# if your written function has errors, and you run the function, you'll not get error
# in console, but when you call the function, you get the error

fun = function(){
  print("hello")
}
fun()

class(fun)         # "function"


fun2 = function(a){
  print(a)
}
fun2(10)

# **********************************************

add <- function(x,y) {
  print(x+y)
}

calc <- function() {
  x = as.integer(readline("enter n1: "))
  y = as.integer(readline("enter n2: "))
  add(x,y)
  print(x-y)
  print(x*y)
  print(x/y)
}
calc()

# *****************************************************************
# create udf to create an employee df (name,gender,age)

name = vector() ; age = vector() ; gender = vector()

df = data.frame(name,age,gender)

addE <- function(df,names,ages, genders) {
  df <- rbind(df, data.frame(names,ages,genders))
  return (df)
}

df = addE(df,"A", 20, "Male")
df

#### Plots ####

# Line Plot
?plot
?iris

data()       # all datasets will be shown
colors()     # all colors will be shown

v <- c(8,14,26,5,43)

plot(v, type="p")   # points 
plot(v, type="l")   # line

plot(v, type  = "o", col = "red", 
     xlab = "X axis", ylab = "Y axis",
     main = "Line Chart")

# if we want to display multiple plots then we can 
# make partitions of Help section

par (mfrow = c(1,2))  
# partition( Main Frame Row = (1 row, 2 columns))

plot(v, type="p")
plot(v, type="o")

# Setting mfrow to 1 again and background = red
par (mfrow = c(1,1))
par(bg = "red")

plot(v, type="o")

# ***********************
par(bg = "white")

data = iris
names(data)
View(data)
str(data)
unique(data$Species)
par(mfrow = c(1,2))
plot(data$Sepal.Length , type = "o", col = "red", main = "Comparison of sepal length and petal length")
lines(data$Petal.Length, type = "o", col = 'blue')
# we can add multiple lines into the chart using lines()

#compare sepal length of setosa species with sepal length
# of versicolor species



# setosas = subset(data, Species == "setosa", select=Sepal.Length) ; setosas
# versicolors = subset(data, Species == "versicolor", select=Sepal.Length) ; versicolors

# Why only the red line appears
# 
# Problem:
#   subset(..., select=Sepal.Length) returns a data frame, not a numeric vector.
# When you call:
#   
#   plot(setosas, type="o", col="red")
# 
# 
# R interprets this as plot.data.frame, which actually plots nothing meaningful for a single-column data frame (it makes an empty plot and sets up the axes).
# 
# Then:
#   
#   lines(versicolors, type="o", col="blue")
# 
# 
# is ignored because lines() expects numeric x/y coordinates — but versicolors is still a data frame, not a numeric vector.
# 
# So the red "line" you see is likely a series of points connected in a trivial way, and the blue line never appears because of how lines() interprets your data.
# 
# ✅ Fix
# 
# Convert the subsets to numeric vectors before plotting:
#   
#   setosas <- subset(data, Species == "setosa")$Sepal.Length
# versicolors <- subset(data, Species == "versicolor")$Sepal.Length
# 
# plot(setosas, type = "o", col = "red", main = "Demo",
#      ylim = range(c(setosas, versicolors)), ylab = "Sepal.Length")
# lines(versicolors, type = "o", col = "blue")
# 
# 
# Now you’ll see both red and blue lines correctly drawn.

setosas <- subset(data, Species == "setosa")$Sepal.Length
versicolors <- subset(data, Species == "versicolor")$Sepal.Length


plot(setosas, type="o", col="red", main="Demo")
lines(versicolors, type="o", col="blue")

# **************************************************************************
# Bar Plot
# wherever we use line plot we can use bar plot
# we use this for frequency distribution


?barplot

H = c(5,7,9,11)
M = c('a','b','c','d')

barplot(H,names.arg = M, col = "red", borde = "green")

# ***************

View(mtcars)
str(mtcars)

# first use table() command for getting frequency distribution so we dont get redundant bars
cylinders = table(mtcars$cyl)
barplot(cylinders, main="Count of Cars by Cylinders types", xlab = "Cylinders types", ylab = "Count of cars", col = "skyblue")

gears = table(mtcars$gear)
barplot(gears, main="count of Cars by No.of gears", xlab = "No.of gear", ylab="count of cars")

# plotting multiple simple barplots at a time using loop 
names(mtcars)
par(mfrow=c(2,3))

names = c('cyl','vs','am','gear','carb')
col_num = match(names, names(mtcars))   
# OR
col_num = which(names(mtcars) %in% names)

for(i in 1:length(col_num)){
  count = table(mtcars[,col_num[i]])
  barplot(count, col = i, main = names[i])
}

# col = i means = every color is assigned a value in R like 1,2,3......


# ***********************
# Multiple Barplots

counts <- table(mtcars$vs, mtcars$gear)
rownames(counts)
barplot(counts, main="car distribution by Gears and VS", 
        xlab = "Number of Gears",
        col = c("darkblue", "red"), beside = TRUE)
legend("topright", pch=16, col=c("darkblue", "red"), c("vs", "gear"))


# ***************************
# Stacked Barplot  
# just do besides=false 

counts <- table(mtcars$vs, mtcars$gear)
rownames(counts)
barplot(counts, main="car distribution by Gears and VS", 
        xlab = "Number of Gears",
        col = c("darkblue", "red"), beside = FALSE)
legend("topright", pch=16, col=c("darkblue", "red"), c("vs", "gear"))

# *****************************************************************************

# Pie Chart

?pie
slices =  c(10,12,4,16,8)
labelss = c('us','uk','aus','nz','br')
pie(slices)
pie(slices, labels=labelss, main="Pie char of countries")


# ****************************************************************************

# Histogram
# just use hist() instead of barplot() / pie()
?hist

View(airquality)
tempr = airquality$Temp
hist(tempr)

hist(tempr, main="Maximum daily temprature at La Guardia Airport",
     xlab = "Temprature in degrees F",
     xlim = c(40,120),
     ylim = c(0,40), 
     col="blue", labels = T)   # labels gives numbers on the bars

# histograms with breaks

hist(tempr, breaks=4, main="With breaks 4")
hist(tempr, breaks=20, main="With breaks 20")














