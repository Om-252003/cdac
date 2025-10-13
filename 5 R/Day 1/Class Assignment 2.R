v = c(12,5,8,21,17)

v[c(2,4)]

mean(v)
sum(v)
v+5
v[3] = 10

v2 = v[v>10]  ; v2    # this returns elements > 10
v2 = which(v>10)   ; v2  # This returns indexes of elemetns > 10

# > v = c(12,5,8,21,17)
# > 
#   > v[c(2,4)]
# [1]  5 21
# > 
#   > mean(v)
# [1] 12.6
# > sum(v)
# [1] 63
# > v+5
# [1] 17 10 13 26 22
# > v[3] = 10
# > 
#   > v2 = v[v>10]  ; v2  
# [1] 12 21 17
# >

# *********************************************************
x = 15
y = 4
v1 = c(10,20,30)
v2 = c(2,4,6)


x+y ; x-y ; x%%y ; x^y

x>=y

v1+v2

20 %in% v1   # TRUE

which(v1==20)  # returns index of 20 in v1

# > x = 15
# > y = 4
# > v1 = c(10,20,30)
# > v2 = c(2,4,6)
# > 
#   > 
#   > x+y ; x-y ; x%%y ; x^y
# [1] 19
# [1] 11
# [1] 3
# [1] 50625
# > 
#   > x>=y
# [1] TRUE
# > 
#   > v1+v2
# [1] 12 24 36
# > 
#   > 20 %in% v1
# [1] TRUE
# > which((v1==20))
# [1] 2
# > which(v1==20)  # returns index of 20 in v1
# [1] 2

# *******************************************************************

v = c(5,10,15,20,25)

length(v) ; 
v[c(length(v)-1, length(v))]
v1*2
v1[1] = 100
sort(v, decreasing = TRUE)
v <- v[!v %in% c(10, 15)] # Remove 10 15 from v
v

# > v = c(5,10,15,20,25)
# > 
#   > length(v) ; 
# [1] 5
# > v[c(length(v)-1, length(v))]
# [1] 20 25
# > v1*2
# [1] 200  40  60
# > v1[1] = 100
# > sort(v, decreasing = TRUE)
# [1] 25 20 15 10  5
# > v <- v[!v %in% c(10, 15)] # Remove 10 15 from v
# > v
# [1]  5 20 25



















