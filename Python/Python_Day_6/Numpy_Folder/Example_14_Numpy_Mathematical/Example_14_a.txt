# axis=0  top to bottom sum
# axis=1  left to right sum

import numpy as k
arr=k.array([[1,2,3,4],
             [2,3,4,5],
             [7,8,9,10]])
arr1=k.sum(arr,axis=1)   # left to right sum
# 1+2+3+4   2+3+4+5   7+8+9+10
print(arr1)

arr2=k.sum(arr,axis=0)  # top to bottom sum
# 1+2+7     2+3+8     3+4+9     4+5+10
print(arr2)


