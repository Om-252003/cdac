# sort the list in ascending order

class Student:
    def __init__(self,name,age):
        self.name=name
        self.age=age
    def __str__(self):
        return  self.name +"\t"+str(self.age)
    def getname(self):
        return self.name
    def getage(self):
        return self.age

s1 = Student("Sachin",23)
s2 = Student("Rahul",32)
s3 = Student("Anand",34)

mylist = [s1,s2,s3]
print(mylist)

for i in mylist:
    print(i)

mylist.sort(key=Student.getname)     # strategy of name based on which sort() method  will sort the object
print("After sorting")
for i in mylist:
    print(i)
