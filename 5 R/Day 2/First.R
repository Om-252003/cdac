#### User Input ####

var1 = readline("Enter elements: ")  ; v
class(var1)

# > v = readline("Enter elements: ")  ; v
# Enter elements: 1000, 0200
# [1] "1000, 0200"
# > class(v)
# [1] "character"

var2 = as.integer(readline("Enter element: "))    # when entered 10, in env we get 10L
var2
class(var2)    # integer

# if we enter non numeric value then:
# Enter element: k
# Warning message:
#   NAs introduced by coercion 
# 
# > var2
# [1] NA
# > class(var2)    # integer
# [1] "integer"

# ******************** 
# take multiple input but one at a time
{
  
  num1 = as.integer(readline("enter element 1: "))
  num2 = as.integer(readline("enter element 2: "))
  num3 = as.integer(readline("enter element 3: "))
  num4 = as.integer(readline("enter element 4: "))

}

# *************************
# scan infinte inputs

x = scan()     # Default numeric # press enter twice to stop entering
class(x)            # numeric
x                 # [1] 10 20 30

# > x = scan()
# 1: 10
# 2: 20
# 3: 30
# 4: 
#   Read 3 items
# > # press enter twice to stop entering
#   > class(x)
# [1] "numeric"

# > x = scan()     # Default numeric
# 1: f
# 1: 3
# Error in scan() : scan() expected 'a real', got 'f'



y = scan(what = character())   ; y # takes 

# > y = scan(what = character())   ; y
# 1: e
# 2: r
# 3: 
#   Read 2 items
# [1] "e" "r"

?scan

scan(nmax = 2)  # takes only 2 inputs

casefold( y , upper = F)  # casefold( y , upper = FALSE)
casefold( y , upper = T)  # casefold( y , upper = TRUE)

# > casefold( y , upper = F)
# [1] "e" "r"
# > casefold( y , upper = T)
# [1] "E" "R"

toupper(y)
tolower(y)

# > toupper(y)
# [1] "E" "R"
# > tolower(y)
# [1] "e" "r"

# **************************************
? menu

choice <- menu(c("Add", "subtract"), title = "select 1 or 2 : ")
cat("you chose :", choice)
class(choice)           # "integer"


# > choice <- menu(c("Add", "subtract"), title = "seelct 1 or 2 : ")
# seelct 1 or 2 :  
#   
#   1: Add
# 2: subtract
# 
# Selection: 2
# > cat("you chose :", choice)
# you chose : 2


#### Factors ####

# factors are data obects used to categorize data and store it as levels
# they are useful in columns which have limited number of unique values
# like male/female or true/false
# useful for data analysis and statistical modeling
# created by using a vector

data = c("east" ,'west','east', 'north','north','east','west','west','west','east','north') ; data
is.factor(data)      # [1] FALSE

factor_data = factor(data) 
factor_data

# factor_data = factor(data) 
# > factor_data
# [1] east  west  east  north north east  west  west  west 
# [10] east  north
# Levels: east north west

?factor

f_new = factor(data, levels = c('west', 'north', 'east'))
f_new

# [1] east  west  east  north north east  west  west  west 
# [10] east  north
# Levels: west north east

# *************************************
# Refer Class Assignment section Factor
# *************************************

# **********************************************************
# Generate Factor Levels

?gl
v = gl(3,4, labels=c("tampa",'seattle','boston'))
v
# [1] tampa   tampa   tampa   tampa   seattle seattle
# [7] seattle seattle boston  boston  boston  boston 
# Levels: tampa seattle boston

v1 = gl(3,4, labels=c("tampa",'seattle'))
v1   # Error in as.character.factor(x) : malformed factor

#### Matrix ####

?matrix

matrix()

# [,1]
# [1,]   NA

v = c(10,20,30,40)  ; v
m = matrix(v)   ; m

# > v = c(10,20,30,40)  ; v
# [1] 10 20 30 40
# > m = matrix(v)   ; m
# [,1]
# [1,]   10
# [2,]   20
# [3,]   30
# [4,]   40

m = matrix(nrow = 2, ncol = 2)  ; m

# [,1] [,2]
# [1,]   NA   NA
# [2,]   NA   NA

m = matrix(v, nrow = 2, ncol = 2)  ; m

# [,1] [,2]
# [1,]   10   30
# [2,]   20   40

m = matrix(v, nrow = 2, ncol = 2, byrow = T)  ; m # byrow is false bydefault

# [,1] [,2]
# [1,]   10   20
# [2,]   30   40

# byrow means putting the data byrow or bycolumn 
# bydefault it is bycolumn ; means byrow  = F
# means the values will be filled in 1st column 1st and then next column
# if we want nxn just specifying nrow or ncol is enough
# and even is we want to create nxm just specifying one is enough


m2 = matrix(1:9, nrow=3, ncol=3, byrow=F)  ; m2

# [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

m2 = matrix(1:9, nrow=3,  byrow=F)  ; m2

# [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

m2 = matrix(1:9, ncol=3, byrow=F)  ; m2

# [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

m3 = matrix(1:12, nrow = 4)  ; m3

# [,1] [,2] [,3]
# [1,]    1    5    9
# [2,]    2    6   10
# [3,]    3    7   11
# [4,]    4    8   12

m3 = matrix(1:12, ncol = 4)  ; m3

# [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12


# *************************************

# Accessing data in matrix

m2[] ;  m2[,]  # prints whole matrix

m2[1,2]       # 1st row 2nd column

m2[1,]        # 1st row 
 
m2[,3]         # 3rd column

# > m2[] ;  m2[,]  # prints whole matrix
# [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9
# [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9
# > 
#   > m2[1,2]       # 1st row 2nd column
# [1] 4
# > 
#   > m2[1,]        # 1st row 
# [1] 1 4 7
# >  
#   > m2[,3]         # 3rd column
# [1] 7 8 9


# ***********************
# Naming the dimensions of matrix

# dimnames must be a list() otherwise we get an Error 

v = c(1,2,3,4)
m <- matrix(v, nrow=2, dimnames = list(c('a', 'b'), c('c','d'))) ; m

# c d
# a 1 3
# b 2 4

# Access sub matrix with compontnts oon both first 2 rows and 2 columns
m2[1:2, 1:2]

# > m2[1:2, 1:2]
# [,1] [,2]
# [1,]    1    4
# [2,]    2    5

m2[1:3, 1:2]

# [,1] [,2]
# [1,]    1    4
# [2,]    2    5
# [3,]    3    6

m2[1:3, 2]

# [1] 4 5 6

m2[1:3, 2:3]

# [,1] [,2]
# [1,]    4    7
# [2,]    5    8
# [3,]    6    9


# *******************************************

# Row Bind and Column Bind

# rbind() one row below another
# cbind() matrix beside other matrix 

# while rbind(), no.of columns must be same
# while cbind(), no.of rows must be same


A = matrix(1:4, nrow = 2)   ; A
B = matrix(5:8, nrow = 2)   ; B
C = rbind(A,B)              ; C
D = cbind(A,B)              ; D


# > A = matrix(1:4, nrow = 2)   ; A
# [,1] [,2]
# [1,]    1    3
# [2,]    2    4
# > B = matrix(5:8, nrow = 2)   ; B
# [,1] [,2]
# [1,]    5    7
# [2,]    6    8
# > C = rbind(A,B)              ; C
# [,1] [,2]
# [1,]    1    3
# [2,]    2    4
# [3,]    5    7
# [4,]    6    8
# > D = cbind(A,B)              ; D
# [,1] [,2] [,3] [,4]
# [1,]    1    3    5    7
# [2,]    2    4    6    8

# *************************************************

# Matrix Arithmetic operations
# element wise multiplication 

A+B
A-B
A*B
A/B

# matrix multiplication
A%*%B     # number of row in 1st matrix must be equal to number of column in 2nd matrix


# *****************************

# inbuilt Matrix functions

t(A)           # transpose
det(A)         # determinant
solve(A)       # inverse
diag(A)        # diagonal from left to right      
rowSums(A)     # row-wise sums
colSums(A)     # column-wise sums
sum(A)         # sums of elements of row
rowMeans(A)    # [1] 2 3
colMeans(A)    # [1] 1.5 3.5

apply(A,1,sum)  # 1-> row-wise sums # we can use rowSums() also
apply(A,2,sum)  # 2-> column-wise sums # can use colSums() also
apply(A,1,max)  # [1] 3 4 returns max  in rows
apply(A,2,max)   # returns max in columns 
apply(A,1,mean) # [1] 2 3

# *********************************************
# Refer class assignment Matrix section
# *********************************************

#### Data Frame ####

?data.frame

v1 = c(14,26,38,30)
v2 = c('hello','good morning', 'nice to meet you','me too')

d = data.frame(v1,v2)  ; d

# v1               v2
# 1 14            hello
# 2 26     good morning
# 3 38 nice to meet you
# 4 30           me too

d = data.frame(v1,v2 , row.names = c('a','b','c','d'))  ; d

# v1               v2
# a 14            hello
# b 26     good morning
# c 38 nice to meet you
# d 30           me too

# ****************************************
# Refer class assignment DataFrame section
# ****************************************

srnos = seq(1,20)  ; srnos
names = c(paste("Student ", 1:20))  ; names
depts = sample(c('CS','IT','ML','AI'), 20, replace = TRUE)
marks = sample(0:400, 20, replace = TRUE)

df = data.frame(srnos,names,depts,marks)
df

str(df)       # structure
summary(df)   # 5 number summary mean median quartile 1 quartile 2 maximum 
nrow(df)      
ncol(df)
dim(df)
names(df)
colnames(df)
rownames(df)
head(df)
tail(df)
head(df,10)
tail(df,10)

# 
# > str(df)       # structure
# 'data.frame':	20 obs. of  4 variables:
#   $ srnos: int  1 2 3 4 5 6 7 8 9 10 ...
# $ names: chr  "Student  1" "Student  2" "Student  3" "Student  4" ...
# $ depts: chr  "CS" "AI" "AI" "ML" ...
# $ marks: int  96 375 123 263 336 27 222 230 354 302 ...
# > summary(df)   # 5 number summary mean median quartile 1 quartile 2 maximum 
# srnos          names              depts               marks      
# Min.   : 1.00   Length:20          Length:20          Min.   : 27.0  
# 1st Qu.: 5.75   Class :character   Class :character   1st Qu.:116.2  
# Median :10.50   Mode  :character   Mode  :character   Median :226.5  
# Mean   :10.50                                         Mean   :207.1  
# 3rd Qu.:15.25                                         3rd Qu.:304.2  
# Max.   :20.00                                         Max.   :375.0  
# > nrow(df)      
# [1] 20
# > ncol(df)
# [1] 4
# > dim(df)
# [1] 20  4
# > names(df)
# [1] "srnos" "names" "depts" "marks"
# > colnames(df)
# [1] "srnos" "names" "depts" "marks"
# > rownames(df)
# [1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13" "14" "15" "16" "17"
# [18] "18" "19" "20"
# > head(df)
# srnos      names depts marks
# 1     1 Student  1    CS    96
# 2     2 Student  2    AI   375
# 3     3 Student  3    AI   123
# 4     4 Student  4    ML   263
# 5     5 Student  5    AI   336
# 6     6 Student  6    IT    27
# > tail(df)
# srnos       names depts marks
# 15    15 Student  15    AI    68
# 16    16 Student  16    CS    32
# 17    17 Student  17    IT   255
# 18    18 Student  18    ML   182
# 19    19 Student  19    CS   256
# 20    20 Student  20    AI   311
# > head(df,10)
# srnos       names depts marks
# 1      1  Student  1    CS    96
# 2      2  Student  2    AI   375
# 3      3  Student  3    AI   123
# 4      4  Student  4    ML   263
# 5      5  Student  5    AI   336
# 6      6  Student  6    IT    27
# 7      7  Student  7    IT   222
# 8      8  Student  8    IT   230
# 9      9  Student  9    ML   354
# 10    10 Student  10    CS   302
# > tail(df,10)
# srnos       names depts marks
# 11    11 Student  11    IT   223
# 12    12 Student  12    IT   323
# 13    13 Student  13    AI   128
# 14    14 Student  14    CS    35
# 15    15 Student  15    AI    68
# 16    16 Student  16    CS    32
# 17    17 Student  17    IT   255
# 18    18 Student  18    ML   182
# 19    19 Student  19    CS   256
# 20    20 Student  20    AI   311


# **********************************************

#Indexing

# $ helps accessing columns of dataframe if present
# if not present then we can add 1 column to it. 

df$names  # prints all names
df$grades = sample(c('A','B','C'), 20, replace = T)  # grades column gets added

df

# if we want to add multiple columns at once then create a new dataframe 
# and column bind 2nd to 1st but row number must be same

df[,2]
df[2,]
df[,'names']
df$grades=NULL          # column grade will be removed
df

df$grade = 1            # grade column created and each row has value 1 for grade
df

df$ grade = ""  ; df   # grade column updated and each row has blank for grade
df$grade = NA   ; df   # grade column updated and each row has value NA for grade

df$names=NULL  ; df    # names column deleted

# Reordering the column
df = df[c(3,2,1,4)]  ; df

# sort dataframe in asc by marks
df[order(df$marks),]  ;    # comma is compulsory
df[order(-df$marks),]  ;

# changed names of columns
names(df) = c('a','b','c','d')
df

# ************************************************************************8

#### IF-ELSE ####
# This is not a control statement
# ratherr it is single line conditional statement

x = c(10,15,20,25,5)
ifelse(x>20, "greater", "smaller")
# [1] "smaller" "smaller" "smaller" "greater" "smaller"

# *******************
# Nested if else

# Recreated dataframe with correct data

df$grades = ifelse(df$marks>=380, "A", ifelse(df$marks>= 350, "B", ifelse(df$marks>=300, "C","D")))
df


# ******************************************
# Refer class assignment section Data Frame 2, 3
# ******************************************












































































































































































