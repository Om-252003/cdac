# global and local variables have same name

var=500
def fun1():
	print("global var is  ",var)
def fun2():
	var=200
	print("local var is  ",var)
def fun3():
	global var
	var=600
	print("global var is   ",var)

fun1()
fun2()
fun3()

print("Global variable is    ",var)
