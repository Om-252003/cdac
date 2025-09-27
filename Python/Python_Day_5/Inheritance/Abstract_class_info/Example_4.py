from abc import abstractmethod

class Parent:
    def disp1(self):
        print("in disp1")
    def disp2(self):
        print("in disp2")
    @abstractmethod
    def disp3(self):
        pass

p1=Parent()    # No error , because though we have abstract method in the class, the class is not abstract
print("done")

