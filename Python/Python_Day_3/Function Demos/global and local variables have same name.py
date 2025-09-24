# global and local variables have same name

var=500
def myfun():
	var=100
	print("Local variable is\t",var)
myfun()
print("Global variable is\t",var)
