#### seq ####
# Create vector with elements from 10 to 20 increment 0.1

v1 = seq(10 , 20, by = 0.1) ; v1

# create vector with even numbers from 10 to 20

v2 = seq(10 , 20 , by= 2) ; v2

# create vector of multiples of 7

v3 = seq(7, 100 , by = 7) ; v3




#### rep ####


# create a vector A1 with 5 7 times and 8 9 times

A1 = c(rep(5,7), rep(8,9))   ; A1

# Create a vector Mine with "I love R"  times

mine = rep("I love R", 4)  ; mine

####  Character Vector ####

# create character of names and print second and last element

cv = c("Hello", "World", "How", "are" , "Bye")
cv[1]
cv[2]
cv[3]
cv[-1]
cv[-2]
cv[0]                # character(0)
cv[-3]
cv[length(cv)]       # prints last 
cv[100]        #  NA  No error

# > cv = c("Hello", "World", "How", "are" , "Bye")
# > cv[1]
# [1] "Hello"
# > cv[2]
# [1] "World"
# > cv[3]
# [1] "How"
# > cv[-1]
# [1] "World" "How"   "are"   "Bye"  
# > cv[-2]
# [1] "Hello" "How"   "are"   "Bye"  
# > cv[0]
# character(0)
# > cv[-3]
# [1] "Hello" "World" "are"   "Bye"  
# > cv[length(cv)]
# [1] "Bye"
# > cv[ c(length(cv), cv[2])]
# [1] NA NA

# When we write positive index it returns element from vector
# when we write negative index it returns full vector without that index's element

#### Fourth ####

# create vector and store first 5 multiples of 5 ,  7 and 16

Demo = c(seq(5,5 * 5,5), seq(7,7 * 5,7), seq(16,16*5,16))
Demo


#### Big ####

# create vector F store 50 elements
# create vector J store 5 random positions
# access elements in F for positions in J

F = seq(50,100 )                # c(1:50) 

J = c(2,44,26,13,39)   

F[J]   

# > F = seq(50,100 )                # c(1:50) 
# > 
# > J = c(2,44,26,13,39)   
# > 
# > F[J]  
# [1] 51 93 75 62 88




#### Sample ####

# create a vector of 5 names and select 1 random name from it

names = c("Rames", "Sures", "Nares","Mahes", "Rakes")
sample(names,1)


