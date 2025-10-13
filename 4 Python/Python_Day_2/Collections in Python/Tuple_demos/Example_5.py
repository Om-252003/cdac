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
