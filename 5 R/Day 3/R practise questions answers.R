# 2. Create a list mylist containing the following elements:
#   • Name: "Ravi"
# • Age: 19
# • Marks: c(70, 85, 90)

# a) Access the Name and Age elements from the list.
# b) Calculate the average of the Marks.
# c) Add a new element Gender = "Male" to the list.
# d) Modify the second mark to 88.
# e) Print the structure of the list using str().

mylist <- list(Name = "Ravi", Age = 19, Marks = c(70, 85, 90)) ; mylist
mylist[1:2]
mean(mylist[[3]])
mylist = append(mylist,c( Gender = "Male"))
mylist[[3]][2] = 88
str(mylist)

# *********************************************************************

# 5.
# marks <- c(56, 78, 92, 45, 68)
# names <- c("Anu", "Ravi", "Zoya", "Amit", "Neha")
# students <- data.frame(Name = names, Marks = marks)
# Answer the following:
# a) Print the names of students who scored more than 60.
# b) Add a new column Grade using ifelse() (>=75 = "A", else "B").
# c) Convert the Grade column into a factor.
# d) Create a list named student_info containing the data frame and total number of students.
# e) Access the third student’s name using the list.


marks <- c(56, 78, 92, 45, 68)
names <- c("Anu", "Ravi", "Zoya", "Amit", "Neha")

students <- data.frame(Name = names, Marks = marks) ; studetns

names[c(marks>60)]

grades = c(ifelse(marks>=75, "A", "B")) ; grades
students$grades = grades

factored_grades = factor(grades)  ; factored_grades

student_info <- list(students, length(names))  ; student_info

student_info[[1]][[1]][3]  # Zoya
# OR
student_info[[1]][3,1]   # zoya







# ******************************************************************
# 42. Classify numbers in a vector into odd/even using ifelse().

v1 = c(10:20) ; v1
v2 = c(ifelse(v1%%2 == 0 , "Even", "Odd"))  ; v2


# *************************************************************

# check if number if even or odd wihtout using control statement
# hint: can use single line conditional statement which 
# can be also called as a function

x = 10
ifelse(x%%2 == 0 , "Even", "Odd")


# ****************************************************************

# 27.
# marks = c(45, 67, 89, 56, 72, 33, 90, 81, 60)
# a. Create a factor variable result with 
# two levels “pass” (marks>=50) & fail students.
# b. Display the frequency of pass & fail.
# c. Convert the factor result into numeric (1 = fail, 2 = pass)
# d. Add result as a new column to a data frame containing marks.
# e. Find how many students scored pass using sum

marks = c(45, 67, 89, 56, 72, 33, 90, 81, 60)

result = factor(ifelse(marks>=50, "Pass", "Fail")) ; result

table(result)

numeric_levels = factor(result, labels = c(0,1))  ; numeric_levels
# OR
numeric_levels = factor(result, labels = c( "Fail" = 0, "Pass" = 1 ))  ; numeric_levels

df = data.frame(marks, result)   ; df

demo= ifelse(marks>=50, 1, 0)
# OR
demo= ifelse(marks>=50,TRUE,FALSE)
sum(demo)



# 31.
# Take a variable:
#   day <- 3
# Sub-questions:
#   a) Use switch() to print the name of the day (1 = Monday, 2 = Tuesday, …, 7 = Sunday).
# b) If day = 8, print "Invalid Input" using if-else.
# c) Extend the problem: if day is 6 or 7, print "Weekend", else "Weekday".

day <- "1"

switch(day, "1" = "sunday", '2' = "moday", '3' = 'tuesday', '4' = 'wednesday', 
       '5' = 'thursday' , '6' = 'friday', '7' = "saturday")
 
ifelse(day=8, "Invalid Input")

switch(day, "1" = "Weekday", '2' = "Weekday", '3' = 'Weekday', '4' = 'Weekday', 
       '5' = 'Weekday' , '6' = 'weekend', '7' = "weekend")


# 32.
# Sub-questions:
#   a) Write a for loop to compute the factorial of n = 5.
#   b) Repeat using a while loop.
# c) Modify your code to print the intermediate result after each multiplication step.
# d) Add an if condition to check if n < 0, print "Factorial not defined".

# a) Write a for loop to compute the factorial of n = 5.
fact = 1
for (i in 1:5){
  fact = fact*i
}
print(fact)

#   b) Repeat using a while loop.
fact = 1
n=5
while(
}

# *********************************************************************************

