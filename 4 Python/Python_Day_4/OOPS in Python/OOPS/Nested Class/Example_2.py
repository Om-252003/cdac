class Army:
    def __init__(self):
        self.name="Rahul"
    def show(self):
        print(self.name)
    class Gun:
        def __init__(self,ref):
            self.name="AK47" 
            self.capacity="75 Rounds"
            self.length="34.3 in"
            self.ref=ref
        def __str__(self):
            return self.ref.name+"\t"+self.name+"\t"+self.capacity+"\t"+self.length

a1=Army()
a1.show()
g1=Army.Gun(a1)
print("\n")
print(g1)