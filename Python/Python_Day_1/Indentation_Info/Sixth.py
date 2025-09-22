# As python doesn't use curly braces for defining the scope, it is mandatory that we must follow indentation
print("hello");         
print("welcome");  
num=12  
if(num>0):
    if(num%2==0):
        print("it is positive and even") 
    else:
        print("positive but odd")
elif(num<0):
    print("it is negative")
else:
    print("it is zero")
print("Done")
print("thank you")
    