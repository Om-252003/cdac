x = [1,2,3,4,5,6]
y = ['a','b','c']
print(*[(a,b) for a,b in zip(x,y)])