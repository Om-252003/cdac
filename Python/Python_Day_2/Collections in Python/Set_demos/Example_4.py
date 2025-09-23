# "update()" function to add two or more elements into set

myset = {1,2,3,4,5}

print(myset)
print(type(myset))

# adding a tuple
myset.update((10,20,30))

print(myset)

# adding list and tuple
myset.update(['A','B','C'],("hello","welcome"))
print(myset)