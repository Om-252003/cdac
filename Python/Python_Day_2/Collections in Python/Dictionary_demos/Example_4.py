class Student:
    def __init__(self,name,age):
        self.name=name
        self.age=age
    def __str__(self):
        return ""+ self.name+"    "+str(self.age)
    def getname(self):
        return self.name
    def getage(self):
        return self.age

s1 = Student('Vishal',23)
s2 = Student('Sachin',32)
s3 = Student('Anand',26)

students = {s1:100,s2:200,s3:50}

for i in students:
    print(i)

mylist= sorted(students,key=Student.getname)

print(type(mylist))
print("Namewise sort")
for i in mylist:
    print(i)

mylist = sorted(students,key=Student.getage)
print(type(mylist))
print("Agewise sort")
for i in mylist:
    print(i)

mylist = sorted(students,key=Student.getname,reverse=True)

print(type(mylist))
print("Namewise descending order")

for i in mylist:
    print(i)
