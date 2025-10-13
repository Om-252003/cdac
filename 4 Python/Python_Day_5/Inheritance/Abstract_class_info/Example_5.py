from abc import abstractmethod

class Parent:
    def disp1(self):
        print("in disp1")
    def disp2(self):
        print("in disp2")
    @abstractmethod
    def disp3(self):
        pass
class Child(Parent):
    pass

p1=Parent()    # No error , because though we have abstract method in the class, the class is not abstract
c1=Child()     # No error 
print("done")

