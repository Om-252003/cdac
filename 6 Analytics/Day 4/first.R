#### Tidyverse ####

install.packages("tidyverse")  # Once for lifetime

# ***************************************
library(tidyverse)
View(diamonds)
?diamonds

# %>%  is called forward pipe operator
# when we do head(iris)
  # only 6 rows will be printed but not stored anywhere
# so we can do demo %>% head() so it means head() is stored in demo
# this results in no confusion when writing complex commands havnig multiple brackets
# demo %>% head() %>% summary()  is like  demo = summary(head(iris))  ; demo

# mutate()  adds new column or modifies current variables in dataset.

# using $ we can just add or modify single column

# mutate() can do for multiple column at once

diamonds %>%
  mutate(
    JustOne = 1,
    Values = "Something",
    Simple = TRUE
  )

names(diamonds) # It is just being visualized and not stored

View(diamonds)  # There are no newly added columns  present in this
                # because this data set is from CRAN repo,
                # we can't modify that


# so we can store the results in objects

df = diamonds %>%
  mutate(
    JustOne = 1,
    Values = "Something",
    Simple = TRUE
  )

# now it will store the result into the df

names(df)
View(df)

dim(df) # 53940    13 || row   column



diamonds %>%
  mutate(price200 = price - 200, # $200 OFF from the original price
         price20perc = price * 0.20, # 20% of the original price
         price20percoff = price * 0.80, # 20% OFF from the original price
         pricepercarat = price / carat, # ratio of price to carat
         pizza = depth ^ 2) # Square the original depth


diamonds_new <- # saving changes to diamonds as a new object
  diamonds %>% # original dataset
  mutate(price200 = price - 200, # $200 OFF from the original price
         price20perc = price * .20, # 20% of the original price
         price20percoff = price * 0.80, # 20% OFF from the original price
         pricepercarat = price / carat, # ratio of price to carat
         pizza = depth ^ 2) # Square the original depth



diamonds %>%
  mutate(m = mean(price))

View(diamonds_new)

diamonds_new %>%
  mutate(m = mean(price), # calculates the mean price
         sd = sd(price), # calculates standard deviation
         med = median(price)) # calculates the median price

class(diamonds_new)


# *******************************************************************

help.search("var")
# Midwest Dataset

# Create a column named avg.pop.den 
# which calculates average population density for entire dataset
# (hint: use mean() and popdensity; all values in this column should be the same – Why?)
View(midwest)


d1 = midwest %>% mutate(
  avg.pop.den = mean(popdensity)
)

View(d1)

# b. Create a column named avg.area which c
# calculates the average area for the entire dataset

d1 = d1 %>% mutate(
  avg.area = mean(area)
)

View(d1)

# ****************************************************************************

# recode()  # modifies values in variables

unique(diamonds$cut)

diamonds_new = diamonds_new %>% mutate(
  cut_new = recode(cut,   # If we don't write cut_new it will modify cut column
                   "Ideal" = "IDEAL")
)

diamonds_new = diamonds_new %>% mutate(
  cut_new = recode(cut,   # If we don't write cut_new it will modify cut column
                   "Fair" = "Ok",
                   "Premium" = "Pizza")
)

# *********************************************************************************************
# creating datset with 2 variables;

gender = factor(c("male", "m","M", "Female" ,"Female","Female" ))
testscore = c(10,20,10,25,12,5)
ds =tibble(gender, testscore)
ds
str(ds)

ds = ds %>% mutate(
  gender = recode(gender,
                  "m" = "male",
                  "M" = "male")
)  ; ds

# ***************************************

# summarize() # collapses all rows and returns 
              # a one-row summary columns

diamonds_new= diamonds %>% summarize(avg_price = mean(price))


# ***********************************************
# group_by() and ungroup()
id = 1:25
gender = c(rep("male","female", 25))
age = c(sample(20:39, 25, replace=T))
score = sample(seq(0,1, by = 0.001), 25,replace=T)

data = tibble(id,gender,age,score)
data

data1 = as.data.frame(data)
data1


data %>%
group_by(gender) %>%
summarize(m = mean(score), # calculates the mean
          s = sd(score), # calculates the standard deviation
          n = n()) %>% # calculates the total number of observations
ungroup()

data1 = data %>%
  group_by(gender) %>%
  mutate(m = mean(score)) %>% # calculates mean score by gender
  ungroup()

data1

# **************************************************************************************

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

# *********************************************************************

# for diamonds ds , find avg price by clarity

diamonds %>%
  group_by(clarity) %>%
  summarise(avg_price = mean(price))

# for diamonds ds , find median depth of every cut

diamonds %>%
  group_by(cut)%>%
  summarise(median_depth_by_cut = median(depth))

# for diamonds ds, replace cut quality by :
# Fair : accha
# Good : bohot accha
# Very Good : Zabardast
# Premium : Lajawab
# Ideal : Thik Thak

diamonds %>%
  mutate(cut = recode(cut,
                      "Fair" = "accha",
                      "Good" = "bohot accha",
                      "Very Good" = "Zabardast",
                      "Premium" = "Lajawab",
                      "Ideal" = "Thik Thak"))



# find modal color

mode <- function(x) {
  y = table(x)
  return (names(y)[which(y == max(y))])
}

diamonds %>%
  summarize(modal_color = mode(color))

# ***************************************************************

# filter() # only retain specific rows that meet specified condition
diamonds %>% filter(cut == "Fair")

diamonds %>% filter(cut %in% c("Fair", "Good"), price<=600)

diamonds %>% filter(cut == "Fair" | cut == "Good", price<=600)

diamonds %>% filter(cut == "Fair" & cut == "Good") # empty 
# 2nd way is: 
diamonds %>% filter(cut == "Fair", cut == "Good") # empty

diamonds %>% filter(cut %in% c("Good", "Very Good", "Fair"), 
                    price %in% c(2000:3000),
                    color %in% c("D","E","F","G"))

diamonds %>% filter(cut != "Fair")



# ***************************************************
# select() # selects onyl columns that we want
diamonds %>% select(cut, color)
diamonds %>% select(1,2)
diamonds %>% select(-1)
diamonds %>% select(-c(1,2))
diamonds %>% select(-c(1:3))


# ****************************************************
#arrange() # allows us to arrange values within a variable(column) in asc or desc
# if and only if value in variable is sortable

diamonds %>% arrange(cut)
diamonds %>% arrange(desc(cut))
diamonds %>% arrange(price)
diamonds %>% arrange(desc(price))

# data will be sorted by asc / desc order of cut / price 

# ****************************************************
# count() # collapses the rows and counts number of observations

# count number of rows per each cut
diamonds %>% count(cut)
# this is same as
diamonds %>% group_by(cut) %>% count()

# ****************************************************
# rename()  # renames of variable (column)

diamonds %>% rename(PRICE = price )  # new name = old name


# ****************************************************
# row_number()  # using this with mutate() will create a column of consecutive numbers
# 
# Using row_number() with mutate() will create a column of	
# consecutive numbers. The row_number() function is useful for	
# creating an identification number (an ID variable). It is also	
# useful for labeling each	
# observation by a grouping variable	


df <- data.frame(
  group = c("A", "A", "B", "B", "B"),
  value = c(10, 5, 8, 8, 12)
)

# Add row numbers by group
df %>%
  arrange(group, desc(value)) %>%
  mutate(row_num = row_number())



# *************************************************************
# Refer Classs Assignment 
# *************************************************************

#### Importing data set ####

# from environment pane > Import Dataset > From text (base) > select the file

#OR 

# File > Import Dataset > From text (base) > select the file

# give desired name, change separator, header = T/F and  other values if
# needed and based on separator in file 
# header = T means file's 1st row has names of columns

# imported data set becomes data.frame we can do tidyverse operations on it

# text (base) means (base package) has txt and csv

# Here, imported titanic_space_separated.txt as data1
# data1 name given while importing it

data1

class(data1)   # "data.frame"

# Get working directory
getwd()

setwd("D:/cdac/6 Analytics/Day 4/Data Sets/")

getwd()

read.table()  # import txt files
read.csv()    # import csv file

file1 = read.table("Titanic_space_separated.txt", header = TRUE)
file1

file2 = read.table("Orange_comma_separated Original.txt", sep = ",", header = T)
file2

file3 = read.csv("diamonds.csv" , header = TRUE)
file3

# *************************************************************

# Exporting

write.table(file1, "New_Titanic1.txt") # created at woorking directory
write.table(file1, "New_Titanic_$_separated.txt", sep = "$")

write.csv(file3,"D:/cdac/6 Analytics/Day 4/Data Sets/New_diamonds.csv", sep = "," )

# *************************************************************












































