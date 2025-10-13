# Negative indexing means beginning from the end, -1 refers to the last item,
# -2 refers to the second-last item, etc.

mylist = [10,"hello",4.5,False,'A']

print(mylist)

var = -1
while var >= -5:
    print(mylist[var])
    var -= 1


