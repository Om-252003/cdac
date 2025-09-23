'''
Using remove() method or discard() method
Elements can be removed from the Set by using built-in remove() function
but a KeyError arises if element doesn’t exist in the set.
To remove elements from a set without KeyError, use discard(),
if the element doesn’t exist in the set, it remains unchanged.
'''

myset = {1,2,3,4,5,6,7}

print(myset)

myset.remove(3)
print(myset)
# myset.remove(10)    # error  KeyError: 10
print(myset)
myset.discard(2)
print(myset)
myset.discard(13)   # no error
print(myset)