# interface in Python

from abc import ABC,abstractmethod

class MyInterface(ABC):                 #  interface in Python
    @abstractmethod
    def disp1(self):
        pass
    @abstractmethod
    def disp2(self):
        pass
class Child(MyInterface):
    def disp1(self):
        print("in disp1 of Child")
    def disp2(self):
        print("in disp2 of Child")
c1=Child()
c1.disp1()
c1.disp2()
