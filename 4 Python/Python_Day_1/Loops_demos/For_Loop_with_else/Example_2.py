# find out at least one number divisible by 5. If it's there print and come out otherwise print "not found"

nums=[12,16,18,21,26]
flag=True
for i in nums:
    if(i%5==0):
        print(i)
        flag=True
        break       # we just want to print only one number divisible by 5 if exists
    else:
        flag=False
if(not flag):
      print("not found")

# what if we don't want to use "flag" variable in this code