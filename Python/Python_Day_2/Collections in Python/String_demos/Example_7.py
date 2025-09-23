
# Built-in string functions

"""

The Python isalpha() method returns true if a string only contains alphabets.
 
Python isdigit() returns true if all characters in a string are numbers. 

Python isalnum() only returns true if a string contains only alphabets or only numbers or combination of alphabets and numbers.

"""

def fun():
	first="hello"
	print(first.isalnum())
	print(first.isalpha())
	print(first.isdigit())
    	print("*****************")
	second="hello8"
	print(second.isalnum())
	print(second.isalpha())
	print(second.isdigit())
    	print("*****************")
    	third="200"
	print(third.isalpha())
	print(third.isalnum())
	print(third.isdigit())
fun()
