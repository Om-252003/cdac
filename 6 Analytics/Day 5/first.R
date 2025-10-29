#### Permutation ####

facto <- function(x) {
  fact = 1
  for (i in 1:x){
    fact = fact * i 
  }
  return (fact)
}

n = 100
r = 97

permute <- function(n,r) {
  permut = facto(n) / ( facto(r) * facto(n-r) ) 
  return (permut)
}
permute(n,r)
facto(5)

#### Simple Interest ####
si <- function(p,r,t) {
  return ( (p*r*t)/100)
}

#### Probability package ####
install.packages("prob") # once run then don't run ever

library(prob)

# write UDF for tossing a coin
tosscoin <- function() {
  return (sample(c("HEAD","TAIL"),1))
}
tosscoin()

# write UDF for rolling a dice
tosscoin <- function() {
  return (sample(c(1,2,3,4,5,6),1))
}
tosscoin()


#### Importing excel ####
install.packages("readxl") # done

library(readxl)
Countries_Region <- read_excel("D:/cdac/6 Analytics/Day 5/Countries Region Mapping.xlsx")
Countries_Region
?read_excel
sheet1 = read_excel("D:/cdac/6 Analytics/Day 5/Countries Region Mapping.xlsx", sheet=1)



















































































