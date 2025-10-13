class MyClass:
    var=0
    def __init__(self,var):
        self.var=var
    def getvar(self):
        return self.var
    def __del__(self):
        print("No Reference is left for {}".format(self))

m1 = MyClass(10)
print(hex(id(m1)))
print(m1.getvar())
m2 = m1
print(hex(id(m1)))
print(m1.getvar())
del m1     # it will not delete the object as m2 reference is also referring to the same object
# print("After deleting m1  ",m1.getvar())   # not possible
print("After deleting m1  ", m2.getvar())
print("done")

