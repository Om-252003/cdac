a = 10:15 ; a         # 10 11 12 13 14 15
b = 10:15:2 ; b
# Warning message:
# In 10:15:2 : numerical expression has 6 elements: only the first used
# [1] 10  9  8  7  6  5  4  3  2

c = c(10,20) ; c      # 10 20
d = c(10,20, by =3) ; d 

#       by 
# 10 20  3 

e = c(10:20) ; e     # 10 11 12 13 14 15 16 17 18 19 20

f = c(10:20 ,by = 5) ; f
#                                  by 
# 10 11 12 13 14 15 16 17 18 19 20  5 

x = c(10:15:30:20)  ; x

# 2: In 10:15:30:20 :
# numerical expression has 21 elements: only the first used
# [1] 10 11 12 13 14 15 16 17 18 19 20

y = c(10:15, 20:25)  ; y   # 10 11 12 13 14 15 20 21 22 23 24 25

g = seq(10,20) ; g    # 10 11 12 13 14 15 16 17 18 19 20
h = seq(10:20) ; h    # 1  2  3  4  5  6  7  8  9 10 11
h = seq(20:10) ; h    # 1  2  3  4  5  6  7  8  9 10 11

# Gives values of count 10 because |10-20|= 10 in both examples 20-10 = 10
 

?seq

i = seq(0, 1, length.out = 5) ; i  # creates vector of equally spaced values inclusive

j = c(seq(5,6), 3)  ; j         # 5 6 3

m = seq(c(7,8), 3 )  # Error in seq.default(c(7, 8), 3) : 'from' must be of length 1

n = seq(3, c(7,8) )  ; n  # Error in seq.default(3, c(7, 8)) : 'to' must be of length 1

o = seq(1,10, 2)  ; o    # 1 3 5 7 9

k = rep(c(7,8), 3 )  ; k    # 7 8 7 8 7 8

l = rep(c(7,8), c(2,3))  ; l   # 7 7 8 8 8

p = rep(c(7,8, 9), c(2,3))  ; p   # Error in rep(c(7, 8, 9), c(2, 3)) : invalid 'times' argument

q = rep(8, c(2,3))  ; q   # Error in rep(8, c(2, 3)) : invalid 'times' argument

r = rep(c(7,8, 9), c(2,3, 4,5))  ; p # Error in rep(c(7, 8, 9), c(2, 3, 4, 5)) : invalid 'times' argument

s = rep(seq(2,5), seq(2,3))  ; s  # Error in rep(seq(2, 5), seq(2, 3)) : invalid 'times' argument

t = rep(seq(2,5), seq(2,5))  ; t    # 2 2 3 3 3 4 4 4 4 5 5 5 5 5

h = seq(20:10) ; h


