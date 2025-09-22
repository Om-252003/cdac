# find out at least one number divisible by 5. If it's there print and come out otherwise print "not found"
nums=[12,16,15,21,26]

for i in nums:
    if(i%5==0):
        print(i)
        break       # we just want to print only one number divisible by 5 if exists
else:
    print("not found")

# here "else" part will not be true as for loop terminates with "break"