#### List ####

# List is R obejct which contains elements of different type like : 
# numbers, vector and another list also

# Matrix and functions are also eligible for being stored

# list is created using list() function

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

cat(l1[1])  # Error in cat(l1[1]) : argument 1 (type 'list') cannot be handled by 'cat'
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
