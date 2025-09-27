# We do not have method overloading in Python

class Base:
    def __init__(self,num1):
        self.num1=num1
        print("Base class constructor ",self.num1)
    def disp1(self):
        print("Base class disp1 method")


class Sub(Base):
    def __init__(self):
        super().__init__(100)    # invoking Base class parameterized constructor explicitly
        print("Sub class constructor")
    def disp1(self,val1):
        print("Sub class disp1 method ",val1)


s1 = Sub()
print(id(s1))

s1.disp1()    # TypeError: Sub.disp1() missing 1 required positional argument: 'val1'
# i.e. now "disp1()" method is not available to Sub class as it has got its own "disp1(val1)" method