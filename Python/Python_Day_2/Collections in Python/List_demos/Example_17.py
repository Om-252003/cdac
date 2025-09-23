# searching from a list with the help of "in" and "index()" function

mylist = ["abc","xyz","pqr","lmn"]

print(mylist)
print(type(mylist))

myval = input("enter value to search in the list")
if myval in mylist:
    print(myval, "is there in the list")
else:
    print(myval," is not there in the list")

print(myval," is there in the list at ",mylist.index(myval)," position")