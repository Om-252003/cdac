# array with strings and chars


import numpy as np
first=np.full((1,4),"hello")
print(first)
print("\n")
second=np.array(['A','B','C','D','E','F'])
print(second)
print("\n")
third=np.full((3,2),'A')
print(third)

'''[['hello' 'hello' 'hello' 'hello']]


['A' 'B' 'C' 'D' 'E' 'F']


[['A' 'A']
 ['A' 'A']
 ['A' 'A']]
'''