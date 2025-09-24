""" now suppose I don't want  initialization and release in each code or rather I am not so sure when exactly I need them
In that case either I will comment initialization and release or put them in If condition.
but that will give me maintenance drawback. """

def fun1():
   # print("Initialising Resources")
    print("Important task1")
    print("Releasing Resources")

def fun2():
    print("Initialising Resources")
    print("Important task2")
 #   print("Releasing Resources")

def fun3():
    print("Initialising Resources")
    print("Important task3")
 #   print("Releasing Resources")

def fun4():
    print("Initialising Resources")
    print("Important task4") 
    print("Releasing Resources")

fun1()
fun2()
fun3()
fun4()
