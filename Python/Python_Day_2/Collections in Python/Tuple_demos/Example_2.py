# creating a tuple with built-in function

mytuple1 = tuple(i for i in range(1, 11))

print("first tuple is")
print(mytuple1)

print("displaying one by one element of a tuple")

for i in mytuple1:
    print(i)

# creating a tuple with the help of list

mylist = ["hello",5.6,True,100,'A']
print("list is ")
print(mylist)
mytuple2 = tuple(mylist)

print("tuple created with the help of list is")
print(mytuple2)

# creating list with the help of tuple

mylist1 = [mytuple1]

print("list created with the help of tuple is")
print(mylist1)
