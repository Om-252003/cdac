class First:
    def __init__(self,num1):
        self.num1=num1
    def __add__(self,temp):
        return self.num1+temp

f1=First(50)
print(f1+100)