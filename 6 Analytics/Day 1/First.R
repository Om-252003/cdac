#### UDF for Mean ####

rawdata = 1:10
avg <- function(v) {
  average = sum(v)/length(v)
  return (average)
}
avg(rawdata)   # 5.5


# ***********************************************

# write a function to find average of frequency distribution

avg <- function(x,f) {
  return(sum(f*x)/sum(f))
}

classmark = c(61,64,67,70,73)
frequencies = c(5,18,42,27,8)
avg(classmark,frequencies )

# OR 

print("Enter classmark : ")
classmark <- scan(what = numeric() , nmax=5)
print("Enter frequencies : ")
frequencies <- scan(what = numeric() , nmax=5)

avg(classmark, frequencies)

# **********************************************

# Combined Arithmetic mean

avg <- function(n1,x1,n2,x2) {
  return (((n1*x1)+(n2*x2))/(n1+n2))
}

avg(100,60,50,90)

# *********************************************
# Weighted mean


