
# constructor overriding

class Base:
    def __init__(self):
        self.num1=20
        print("Base class constructor")
    def disp(self):
        print("in base disp")


class Sub(Base):
    def __init__(self,num2):
        self.num2=num2
        print("Sub class constructor")
       

s1 = Sub(100)
print(id(s1))
print(s1.__class__.__base__)
print(s1.__class__.__base__.__base__)
print(s1.num2)
print("\n")
# print(s1.num1)   # cannot access because "Base" class "init" is not called 
s1.disp()

