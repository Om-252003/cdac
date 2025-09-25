a = 100
def add():
    num=10
    print(type(num))

add()

class Temp:
    num = 20
    print(type(num))

    def __init__(self):
        self.b = 200
        



t = Temp
print(type(t))
t = Temp()
print(type(t))
