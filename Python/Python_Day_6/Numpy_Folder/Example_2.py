
# How to accept input in the array

import numpy as np
first=np.arange(5)
print(first)
print("enter 5 numbers")
for i in range(0,first.__len__()):
    first[i]=int(input())
print("Displaying all the numbers")
for i in range(0,first.__len__()):
    print(first[i])
print("\n")
print("dimension of array is\t",first.ndim)
print("\n")
print("shape of array is\t",first.shape)
