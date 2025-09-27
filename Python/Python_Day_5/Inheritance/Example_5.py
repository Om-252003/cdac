class Base:
    def __init__(self,num1):
        self.num1=num1
class Sub(Base):
    def __init__(self,num1,num2):
        super().__init__(num1)
        self.num2=num2
    def show(self):
        print(self.num1,"\t",self.num2)

s1=Sub(100,200)
s1.show()