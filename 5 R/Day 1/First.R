#### Assignments and Introduction ####

# Run any command using ctrl + Enter

# Comments start with # sign

# Comment is always ignored by R when program is run

# R is "case sensitive" and "indentation sensitive" also

# rm(list = ls())  this is usd to clear the environment
 
# cat("\014") is used to clear console
 
# ctrl + shift + c is used to comment line/s

#### Operations ####

x = 2           # an Object having a value 2
print(x)  
x               # No need to write print() for printing objects
class(x)        # class "numeric"   

y = 3; y        # ; is delimiter so this is creating object is 1 command
                # and 'y' is like print(y)

rm(list = ls())    # To clear the environment means delete all objects


# To see what value an object holds without writing print statement 
# we can select the object's name at the place it is written
# (it can be written anywhere) and run the selected part. 
# this results in seeing the value and not typing redundant print() 
# which we have to remove later

v = c(1:10000) # this is a sequence called as vector 
v    # can print only 1000 values 9000 are not printed [ reached 'max' / getOption("max.print") -- omitted 9000 entries ]
print(v)  # can print only 1000 values 9000 are not printed [ reached 'max' / getOption("max.print") -- omitted 9000 entries ]
cat(v)    # can print all values
paste(v)  # can print only 1000 values 9000 are not printed [ reached 'max' / getOption("max.print") -- omitted 9000 entries ]



#### Operators ####

# = and <- act as assignment operators.  <- has more preference than = 
a = 2
b <- 3
class(a) 
class(b)

class(a,b)    # Error in class(a, b) : 2 arguments passed to 'class' which requires 1


# *************************************************************************

z = "Hello" ; z
class(z)      # class is "character" because string not present in R

u = "2"
class(u)      # "character"

u = 2
class(u)      # "numeric"

print(u)      # prints 2 because "2" got overriden



#### Vectors ####

# creating a sequence 

v <- 8:17 ; v          # creating vector from 8 to 17 inclusive 
class(v)               # class "integer"

s = 5.5 : 17.5 ; s
class(s)               # class "numeric"

t = 3.8 : 11.4 ; t     # default increment 1 so 3.8 to 10.8 

# *****************

? sequence
? seq


# Refer class assignment 1 vector Section seq

# creating vector using c() function 

# It concatenates, c for concatenate 

e = c(2,3,4,5,6,7,100,"a", "b", 'c', 4L, 5.2) ; e
# prints [1] "2"   "3"   "4"   "5"   "6"   "7"   "100" "a"   "b"   "c"   "4"   "5.2"

class(e)

# e_1 = (10,20,by  = 1)       # Error: unexpected ',' in "e_1 = (10,"  # error ended here
e_1 = c(10,20,30) ; class(e_1)        # "numeric"
e_2 = c("A", "B", "C") ; class(e_2)   # "character"
e_3 = c(10L, 20L) ; class(e_3)        # "integer"

? rep
f = rep(5,4)   ; f                 # [1] 5 5 5 5

g = rep(c(1,4), 3) ; g              # [1] 1 4 1 4 1 4



# Refer class Assignment 1 vector and section Rep

A1 = c(rep(5,20), rep(8,20))  ; A1   

# in R indexing starts from index 1 not from 0
v
length(v)
v[1]
v[1:3]
v[2]

# > v
# [1]  8  9 10 11 12 13 14 15 16 17
# > length(v)
# [1] 10
# > v[1]
# [1] 8
# > v[1:3]
# [1]  8  9 10
# > v[2]
# [1] 9
# >

x = 2 # is an Object OR Atomic Vector (only 1 value)

# **************************

v = c(14,26, 38, 26, 30)
sum(v)
mean(v)
max(v)
min(v)
sort(v)
# sort(v, decreasing = True)     Error: object 'True' not found
sort(v, decreasing = TRUE)
rev(v)
unique(v)

# > v = c(14,26, 38, 26, 30)
# > sum(v)
# [1] 134
# > mean(v)
# [1] 26.8
# > max(v)
# [1] 38
# > min(v)
# [1] 14
# > sort(v)
# [1] 14 26 26 30 38
# > # sort(v, decreasing = True)     Error: object 'True' not found
#   > sort(v, decreasing = TRUE)
# [1] 38 30 26 26 14
# > rev(v)
# [1] 30 26 38 26 14
# > unique(v)
# [1] 14 26 38 30
# >


# Refer class Assignment 1 vector file and section Character Vector

# *****************************
# Adding element in vector

v = c(14, 26 ,38, 30)
v = c(v,50)     # adds 50 in v
v

# ************************************************
v_2 = c("Hello", "Good morning", "nice to meet you", "me too")
v_2

class(v_2)
v_2[1]
v_2[1:2]
v_2[2:3]

v_2[1] <- "A"
v_2

# > v_2 = c("Hello", "Good morning", "nice to meet you", "me too")
# > v_2
# [1] "Hello"            "Good morning"     "nice to meet you"
# [4] "me too"          
# > 
#   > class(v_2)
# [1] "character"
# > v_2[1]
# [1] "Hello"
# > v_2[1:2]
# [1] "Hello"        "Good morning"
# > v_2[2:3]
# [1] "Good morning"     "nice to meet you"
# > 
#   > v_2[1] <- "A"
# > v_2
# [1] "A"                "Good morning"     "nice to meet you"
# [4] "me too"          
# >

# ************************************************************
v_1 <- c(12.111 , 12.2)
v_1
v_1 = as.integer(v_1)
v_1
class(v_1)

# > v_1 <- c(12.111 , 12.2)
# > v_1
# [1] 12.111 12.200
# > v_1 = as.integer(v_1)
# > v_1
# [1] 12 12
# > class(v_1)
# [1] "integer"

# ************************************************************
v_3 = c(10,20, "Hello") ; v_3
class(v_3)        # "character" because the vector is coerced to character


# in character all letters are at same level
# in factor there are levels means "A" > "B"

grade <- c("A","Y","B","G","E")  ; grade
class(grade)                         # "character"

grade <- as.factor(grade)  ; grade   # Levels: A B E G Y
class(grade)                # "factor"
is.factor(grade)             # TRUE

# non-character values are coerced to character type even if single element is character
s <- c('apple', "red", "blue",5, TRUE) ; s
class(s)                        #"character"

t<- c(F, 5, TRUE) ; t         # 0 5 1
class(t)                     # "numeric"


# ***********************************************
# Refer Class Assignment 1 vector section Fourth
# ***********************************************


print(v)             # [1] 14 26 38 30 50
v[v>0]                # [1] 14 26 38 30 50
v[v<0]              # numeric(0)


# finding index from name
k = c(11,13,15,7,8,9)
which((k==11))         # [1] 1
which(( k == 8))        # [1] 5

# *******************************
# Refer Class Assignment 1 section Big
# *******************************

?sample
sample(1:6,2)     # gives random samples everytime it runs

# > sample(1:6,2)
# [1] 5 3
# > sample(1:6,2)
# [1] 2 6
# > sample(1:6,2)
# [1] 2 6


# Refer Class Assignment 1 and section Sample



names = c("Rames", "Sures", "Nares","Mahes", "Rakes")
sample(names,1)

# set.seed() used to get same output every time, 
# but both statements must be run at same time 
# (select set.seed() and sample() and then run them)
set.seed(9999)
sample(names, 1)

# ***********************************************************

#### Data Types ####

# Complex
comp1 = 3+2i
class(comp1)            # "complex"

Im(comp1)           # 2
Re(comp1)            # 3
Mod(comp1)            # 3.605551    
Arg(comp1)            # 0.5880026
Conj(comp1)           # 3-2i

#### Operators ####

# Arithmetic

x<-4
y<-17

x+y ; x-y ; x*y 

y/x;       # x should not be 0 

y%/%x      # integer division  o/p : 4   # floor division
y%%x       # mod   o/p : 1

y^x ; y**x   # both are exponential

# **********

# arithmetic operations on vectors are done on value to value 
x_1 = c(1,2,3,4)
y_1 = c(5,6,7,8)

x_1 + y_1
x_1 - y_1
x_1 * y_1
x_1 / y_1
x_1 %/% y_1
x_1 %% y_1
x_1 ^ y_1

# if lengths are different then the values from smaller vector will be repeated  
# and we also get a Warning before the output
# ************
"hello"+"hi"       # Error in "hello" + "hi" : non-numeric argument to binary operator


# Relational Operator

x=18
y=17

 x<y  ; x>y ; x<=y  ; x>=y ; x== y ; x!= y

#FALSE TRUE FALSE TRUE FALSE TRUE


# Logical Operators

# 0 is FALSE and non zero is TRUE

x = c(TRUE, FALSE, 0)
class(x)     # "numeric"
 
a = as.numeric(x)  ; a     # 1 0 0 8
class(a)      # "numeric"

y = c(TRUE,FALSE, FALSE)  ; y
class(y)       # "logical"

# Logical And or not

a = c(1,1,0,1)
b = c(0,1,0,1)

a&b ; a|b ; !a ;  !b

# [1] FALSE  TRUE FALSE  TRUE
# [1]  TRUE  TRUE FALSE  TRUE
# [1] FALSE FALSE  TRUE FALSE
# [1]  TRUE FALSE  TRUE FALSE

# Identity operator %in%
# returns true if given object is present in desired object

v1 = 2
v2 = 12
t = 1:10
print(v1 %in% t)   # TRUE
print(v2 %in% t)   # FALSE

# consider a vector vowel = c('a', 'e', 'i', 'o','u')
# check whether b = "c" is a vowel or not

vowel = c('a', 'e', 'i', 'o','u')
"c" %in% vowel          # False

# *******************************

cat("Hello \n World")    # Hello 
                         # World
print("Hello \n World")  # "Hello \n World"

cat("Hello \t World")    # Hello 	 World
print("Hello \t world")  # "Hello \t world"

cat("a"+"b")   # Error in "a" + "b" : non-numeric argument to binary operator
cat(abcd = 20) ; abcd  # 20 gets printed and then error Error: object 'abcd' not found
abcd                 # Error: object 'abcd' not found

cat(10+20)          # 30


# *******************************************


# > print(as.logical(1))
# [1] TRUE
# > print(as.logical(""))
# [1] NA
# > print(as.logical("0"))
# [1] NA
# > print(as.logical("1"))
# [1] NA
# > print(as.logical("abcd"))
# [1] NA
# > print(as.logical("false"))
# [1] FALSE
# > print(as.logical("true"))
# [1] TRUE
# > print(as.logical(true))
# Error: object 'true' not found
# > print(as.logical(1.1))
# [1] TRUE

