# Tuple

mytuple = (10,"hello",4.6,True,'N')

print(mytuple)

print(len(mytuple))

print(mytuple[0])  # accessing a particular element of a tuple

# mytuple[1]="welcome"   # Error : cannot change tuple

# how to concat tuple
mytuple1=mytuple+ (500,"welcome",False) # tuple is immutable
print(mytuple)
print(mytuple1)

