# checking the shape of numpy array

import numpy as np
first=np.array([100,200,300,400,500,600])
print(first)
print(first.shape)

print("let's check with double dimension array")
second=np.array([[10,20,30],[40,50,60]])
print(second)
print(second.shape)

print("Let's convert one-d array's shapes")
first.shape=(2,3)
print(first)
print("Let's convert two-d array's shape")
second.shape=(3,2)
print(second)
print(second.ndim)