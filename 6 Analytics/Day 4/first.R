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


diamonds.new <- # saving changes to diamonds as a new object
  diamonds %>% # original dataset
  mutate(price200 = price - 200, # $200 OFF from the original price
         price20perc = price * .20, # 20% of the original price
         price20percoff = price * 0.80, # 20% OFF from the original price
         pricepercarat = price / carat, # ratio of price to carat
         pizza = depth ^ 2) # Square the original depth



diamonds %>%
  mutate(m = mean(price))

View(diamonds)

diamonds %>%
  mutate(m = mean(price), # calculates the mean price
         sd = sd(price), # calculates standard deviation
         med = median(price)) # calculates the median price

class(diamonds)


# *******************************************************************


# Midwest Dataset

# Create a column named avg.pop.den 
# which calculates average population density for entire dataset
# (hint: use mean() and popdensity; all values in this column should be the same – Why?)
View(midwest)


midwest %>% mutate(
  avg.pop.den = mean(popdensity)
)
head






















