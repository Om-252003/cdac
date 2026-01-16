cat("Everybody", "is", 'a', "warrior", sep="*")

x <- vector("numeric", length=10) ; x

x <- vector("character", length=10) ; x

demo <- function(a) {
  a = 10
}

demo

x <- 10
y <- "10"
x + y

ls()

x <- c(1, 2, "3", TRUE, 0.1)
typeof(x)

x <- c(TRUE, 2)
x

str(x)

x <- c(1, 2, NULL, 4)
mean(x)


df <- data.frame(a = 1:3, b = c("x","y","z"))
typeof(df)


df <- data.frame(a=1:3, b=4:6)
df[,1]



df <- data.frame(a=1:3, b=3:1)
df
df[order(df$b) , ]


df <- data.frame(a=1:3, b=4:6)
df
df[, c(TRUE, FALSE)]
df

df1 <- data.frame(id=1:2, x=c(10,20))
df2 <- data.frame(id=2:3, y=c(30,40))
merge(df1, df2, all=TRUE)




x <- c(1, 2, 3)
if (x > 2) print("Hi")
x>2

for(i in 1:3) {
  if(i == 2) 
    { next} 
  print(i)
}

demo <- function(a, b, c) {
  cat(a, b, c)
}
a = 10 ; b = 20 ;  c = 30
demo(b , c , a)

x <- list(a = 1, b = list(c = 2))
x
x$b$c
x[[3]]

x <- list(1, 2, 3)
x[1]

library(tidyr)
df <- data.frame(
  name = c("A","A","B"),
  key = c("x","y","x"),
  value = c(1,2,3)
)
pivot_wider(df, names_from = key, values_from = value)
















































