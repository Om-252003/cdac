# create single dimensional array

import numpy as np         #  here "numpy" is a module and "np" is an alias

first=np.array([100,200,300,400])
print(first)

for i in range(0,first.__len__()):
    print(first[i])

print(type(first))
print("dimension of array is\t",first.ndim)
print("\n")
print("shape of array is\t",first.shape)

# first[4]=500     #  arrays are fixed

