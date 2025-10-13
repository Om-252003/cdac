from abc import ABC,abstractmethod

class Parent(ABC):
    def disp1(self):
        print("in disp1")
    def disp2(self):
        print("in disp2")

p1=Parent()    # No error because the class is not yet an abstract class
p1.disp1()
p1.disp2()