from abc import abstractmethod
def temp():
        pass
a=10
class Parent:
    def disp1(self):
        print("in disp1")
    def disp2(self):
        print("in disp2")

    @abstractmethod
    def disp3(self):
        print("disp3")





p1=Parent()    # No error , because though we have abstract method in the class, the class is not abstract
p1.disp3()
del p1
if p1 : print("yes")

