from abc import ABC,abstractmethod

class Parent(ABC):
    def disp1(self):
        print("in disp1")
    def disp2(self):
        print("in disp2")
    @abstractmethod
    def disp3(self):
        pass
class Child(Parent):
    pass

# p1=Parent()    # TypeError: Can't instantiate abstract class Parent with abstract method disp3
# c1=Child()     # TypeError: Can't instantiate abstract class Child with abstract method disp3

print("done")

