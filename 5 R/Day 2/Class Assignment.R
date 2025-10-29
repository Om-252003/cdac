#### Factor ####

# create a factor for days of week and display levels

days = c("Sunday", 'moday','tuesday','wednesday','thursday','friday','saturday')
factor(days)

# [1] Sunday    moday     tuesday   wednesday thursday  friday    saturday 
# Levels: friday moday saturday Sunday thursday tuesday wednesday


# create an ordered factor for "low", "medium" and "high"
my_vec = c("high" ,"medium", "low")
factor(my_vec, levels = c('low','medium','high'))
# OR 
ordered(my_vec, levels = c('low','medium','high'))

# > my_vec = c("high" ,"medium", "low")
# > factor(my_vec, levels = c('low','medium','high'))
# [1] high   medium low   
# Levels: low medium high
# > ?factor
# > # OR 
#   > ordered(my_vec, levels = c('low','medium','high'))
# [1] high   medium low   
# Levels: low < medium < high

# create numeric coded gender vector (1,2) into a labelled factor (male, female)

v = c('male','female','male','female')
factored_v = factor(v, levels = c('male','female'), labels = c(1,2))

v
factored_v

# > v
# [1] "male"   "female" "male"   "female"
# > factored_v
# [1] 1 2 1 2
# Levels: 1 2



#### Matrix #####

# Q1) create identity matrix of size 4
diag(4)
diag(1,4)
diag(c(1,1,1,1))

# [,1] [,2] [,3] [,4]
# [1,]    1    0    0    0
# [2,]    0    1    0    0
# [3,]    0    0    1    0
# [4,]    0    0    0    1

# [,1] [,2] [,3] [,4]
# [1,]    1    0    0    0
# [2,]    0    1    0    0
# [3,]    0    0    1    0
# [4,]    0    0    0    1
 
# > diag(c(1,1,1,1))
# [,1] [,2] [,3] [,4]
# [1,]    1    0    0    0
# [2,]    0    1    0    0
# [3,]    0    0    1    0
# [4,]    0    0    0    1


# Q2) create a matrix of 3 students in 3 subjects and find average marks per student 
# and per subject using rowmeans and colmeans

marks = matrix(c(50,60,70,55,65,75,60,70,80), nrow = 3, dimnames = list(c('s1','s2','s3'), c('Java', 'Python', "R")))
marks
colMeans(marks)

# Java Python    R 
# 60     65     70 


# Q3) create m with 1 to 9 filled row-wise in 3 rows


# print 2nd row of m
# calculate sum of each row
# multiply each element by 2
# transpose
# sum of diagonal elements

# Q4) create matrix of (10 to 6) (6 elements) nrow = 2 byrow=True

# find column sums
# add new row(70,80,90)
# replace 2nd column by 100,200
# extract 2nd row as vector
# calculate mean of entire matrix 




# create a vector ('hello','i','am',24,50,60,45,'rrr')
# check if 'am' present in vector or not

v = c('hello','i','am',24,50,60,45,'rrr')
'am' %in% v


# create matrix of same vecror of 2 rows and 4 columns
m1 = matrix(v, nrow = 2) ; m1

#### Data Frame ####

# create DF having 20 rows and 4 columns 
# Serial number, name of student, department, Marks out of 400

srnos = seq(1,20)  ; srnos
names = c(paste("Student ", 1:20))  ; names
depts = sample(c('CS','IT','AI', 'ML'), 20, replace = TRUE)
marks = sample(0:400, 20, replace = TRUE)

df = data.frame(srnos,names,depts,marks)
df

# replace = TRUE ; In this case, "CS" appeared twice because 
# after it's picked once, it's put back into the pool, 
# and can be selected again.

# for names we can also do names = letters[1:20] it'll give 20 letters

# if we don't use replace  = T
# then due to small size of sample, we'll get error
# Error in sample.int(length(x), size, replace, prob) : 
#   cannot take a sample larger than the population when 'replace = FALSE'


#### Data Frame 2 ####

marks = c(56,78, 92,45, 68)
names = c("anu", 'ravi','zoya','amit','neha')
studs = data.frame(name = names, mark = marks)

# print studetns having marks > 60

studs$name[studs$mark>60]          # [1] "ravi" "zoya" "neha"

# add new column grade using ifelse >=75 then A , else B
# convert grade into factor
# rest of questions

# attach(studs)

# detach(studs)

?attach
?detach















































































































#### Data Frame 3 ####
#### Data Frame 4 ####

#### Data Set ####

# view iris data set
# lsit all columns
# list all species
# filter outt the data when sepal length > 5 & sepal width <3
# display only petal length and petal width
# filter data where species is versicolor
# filter data where species is versicolor , petal width < 2.5

View(iris)

colnames(iris)

unique(iris$Species)

filtered_sepcies = subset(iris, Sepal.Length > 5 & Sepal.Width < 3)
filtered_sepcies

only_PL_and_PW = subset(iris, select = c(Petal.Length, Petal.Width))
only_PL_and_PW

filtered_versicolor = subset(iris, Species == "versicolor")
filtered_versicolor


filtered_versicolor_and_PW = subset(iris, Species == "versicolor" & Petal.Width < 2.5)
filtered_versicolor_and_PW



