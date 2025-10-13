class Army:
    def __init__(self):
        self.name="Rahul"
    def show(self):
        print(self.name)
    class Gun:
        def __init__(self):
            self.name="AK47"
            self.capacity="75 Rounds"
            self.length="34.3 in"
        def __str__(self):
            return self.name+"\t"+self.capacity+"\t"+self.length

a1=Army()
a1.show()
g1=Army.Gun()
print("\n")
print(g1)