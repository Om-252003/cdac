# slicing tuple

mytuple1 = tuple("Internationalization")

for i in mytuple1:
    print(i)

print("slice first 2 elements")
print(mytuple1[2:])

print("Reverse the tuple")
print(mytuple1[::-1])

print("tuple elements within a particular range")
print(mytuple1[4:8])
print("slice last 5 characters")
print(mytuple1[:-5])

print("index of a given value")
print(mytuple1.index('n'))

print("how many times that character is occurred in a given tuple")
print(mytuple1.count('n'))

print("Maximum value of a tuple is")
print(max(mytuple1))
print("Minimum value of a tuple is")
print(min(mytuple1))

print("Sort the elements of tuple")
print(sorted(mytuple1))
