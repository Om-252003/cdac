# 1. Create the vectors:
#   a. (1, 2, 3, . . . , 19, 20)
# b. (20, 19, . . . , 2, 1)
# c. (1, 2, 3, . . . , 19, 20, 19, 18, . . . , 2, 1)
# d. (4, 6, 3) and assign it to the name tmp.
# e. (4, 6, 3, 4, 6, 3, . . . , 4, 6, 3) where there are 10 occurrences of 4.
# f. (4, 6, 3, 4, 6, 3, . . . , 4, 6, 3, 4) where there are 11 occurrences of 4, 10
# occurrences of 6 and 10 occurrences of 3.
# g. (4, 4, . . . , 4, 6, 6, . . . , 6, 3, 3, . . . , 3) where there are 10 occurrences of
# 4, 20 occurrences of 6 and 30 occurrences of 3.

a = 1:20  ; a

b = 20:1  ; b

c = c(1:20, 19:1) ; c

tmp <- c(4,6,3)

e = rep(c(4,6,3) , 10)  ; e

f = c(rep(c(4,6,3), 10),4)  ; f

g = rep(c(4,6,3), c(11,10,10))  ; g

# ***************************************************************************

# 2. Create a following matrix in R

# 0    1    2    3    4
# 1    2    3    4    5
# 2    3    4    5    6
# 3    4    5    6    7
# 4    5    6    7    8

m1 = matrix(c(0:4, 1:5, 2:6, 3:7, 4:8), nrow=5) ; m1

# ***************************************************************************

# 3. Write R program to take input from the user (name and age) and display values

{
  name = readline("Enter name: ")
  age = as.integer(readline("Enter age: "))
}

name ; age

# ***************************************************************************

# 4. Write a R program to create a Dataframes which contain details of 5
# employees and display summary of the data.

empid = 1:5
empname = paste("emp_" , letters[1:5], sep="")
dept = sample(c("CS",'IT'), 5,replace=T)

df = data.frame(empid, empname, dept)
df

summary(df)

# ***************************************************************************

# 5. Create two different 2 by 2 matrices named A and B. A should contain the
# values 1 - 4 and B the values 5-8. Try out the following commands and by
# looking at the results see if you can figure out what is going on.
# • A
# • A * B
# • A / B
# • C = A %x% B
# • D = A + B
# • E = A – B
# • A == B

A = matrix(1:4, nrow = 2)   ; A   
B = matrix(5:8, nrow = 2)   ; B   

A*B              
A/B                
C = A %*% B  ; C   

C = A %x% B  ; C 

D = A+B      ; D 
E = A-B      ; E  
A == B            

# ***************************************************************************

# 6. Create a 4*3 Matrix containing 12 numbers
# a What is the length and the mode of the matrix
# b Extract all values from matrix that are larger than 6.
# c Shift places of column 1 and 3
# d Add a vector with three zeros as a fifth row to the matrix
# e Replace all values the first two columns in your matrix with “NA
# f Replace all values in the matrix with 0 and convert it to a vector

m2 = matrix(sample(1:50, 12, replace = T ), nrow = 4) ; m2

# [,1] [,2] [,3]
# [1,]    2   45   14
# [2,]   17   43   29
# [3,]    4   43   40
# [4,]   16   37    1

length(m2)          # 12
mode(m2)            # "numeric"

b = m2[m2>6]   ;b   # 17 16 45 43 43 37 14 29 40

c = m2[, c(1, 3)] <- m2[, c(3, 1)]

v = c(10,20,30)
rbind(m2,v)

m2[,c(1,2)] = NA  ; m2

m2[,] = 0         ; m2
v1 = as.vector(m2)     ; v1

# ***************************************************************************
# 7. Data frames

# Write a R program to create a data frame from four given vectors.

v1 = 1:10
v2 = letters[1:10]
v3 = LETTERS[1:10]
v4 = paste(letters[1:10], LETTERS[1:10], sep="_")

df1 = data.frame(v1,v2,v3,v4)  ; df1

# Write a R program to get the structure of a given data frame

str(df1)

# • Write a R program to get the statistical summary and nature of the data
# of a given data frame.

summary(df1)

# • Write a R program to extract specific column from a data frame using
# column name

df1$v2 

# Write a R program to extract first two rows from a given data frame.

df1[c(1,2),]

# • Write a R program to extract 3rd and 5th rows with 1st and 3rd columns
# from a given data frame

df1[c(3,5), c(1,3)]

# Write a R program to add a new column in a given data frame.

v5 = paste(LETTERS[10:1], letters[1:10], sep="&")
cbind()

# • Write a R program to add new row(s) to an existing data frame.
# • Write a R program to drop column(s) by name from a given data frame.
# • Write a R program to drop row(s) by number from a given data frame
# • Write a R program to sort a given data frame by multiple column(s)












































