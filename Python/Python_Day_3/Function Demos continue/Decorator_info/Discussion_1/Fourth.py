# we have a solution for this. We can go for "Decorator" function.
# let's write initialization and release 

def decor_function(myfun):  # decorator function
    def with_init_release():  # closure
        print("Initialising Resources")
        myfun()
        print("Releasing Resources")
    return with_init_release


def fun1():
    print("Important task1")


def fun2():
    print("Important task2")


def fun3():
    print("Important task3")


def fun4():
    print("Important task4") 
    
var1=decor_function(fun1)
var1()
fun2()  # we don't want to do initialization and clean up
var2=decor_function(fun3)
var2()
""" var3=decor_function(fun4)
var3() """
decor_function(fun4)()   # no need to collect function in any variable

# place breakpoint at all the print statements and at the "return" statement and observe the call stack