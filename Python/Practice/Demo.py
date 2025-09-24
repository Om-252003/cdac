def caller():
    def show1():
        print("show 1")
    return show1

print("1st way")
fun = caller()
fun()

print("2nd way")
caller()()