# nested list

mylist = [[10,"hello",3.4],[100,True,"welcome"]]

print(mylist)
# let's print the size of outer list
print(len(mylist))

# let's print the size of first nested list
print(len(mylist[0]))

# let's print the size of second nested list
print(len(mylist[1]))

# print first nested list
print(mylist[0])
# print second nested list
print(mylist[1])

# let's print all the elements of first nested list

for i in mylist[0]:
    print(i)

# let's print all the elements of second nested list

for i in mylist[1]:
    print(i)


