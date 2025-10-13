
def fun():
	try:
		
		var=10/0
	except Exception as e:
		print("some other error\t",e)
	except ZeroDivisionError as z:
		print("error is\t",z)
	print("Done")
fun()


# No Compile error