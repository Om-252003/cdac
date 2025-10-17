var = 100
username = "User1"

def login(uname):
    if uname == "admin" or "Admin":
        var = 200
        print("Login Successful")
        print("var = ", var)
    else:
        var = 300
        print("Invalid Username")
        print("var = ", var)

login(username)
print("var = ", var)

# what will be the output of this program?
# Login Successful
# var = 200
#
# Login Successful
# error message : global variable can not be accessed without using global
#
# Invalid Username
# var = 300
#
# Invalid Username
# error message : global variable can not be accessed without using globals