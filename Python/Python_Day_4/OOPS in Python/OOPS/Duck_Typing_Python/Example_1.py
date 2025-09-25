class Bird:
    def fly(self):
        print("Bird is flying")
class SuperMan:
    def fly(self):
        print("Superman is flying")
class Person:
    def talk(self):
        print("Person is talking")

def perform(obj):
    print("Type of obj is\t",type(obj))
    obj.fly()

b1=Bird()
perform(b1)
s1=SuperMan()
perform(s1)
