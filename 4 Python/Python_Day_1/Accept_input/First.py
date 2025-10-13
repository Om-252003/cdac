name=input("Enter your name")
print("Name entered is\t",name)
age=input("Enter your age")
print("Age entered is\t",age)
# age+=10  #  TypeError: can only concatenate str (not "int") to str
age= int(age)
age+=10
print("Age after 10 years will be\t",age)