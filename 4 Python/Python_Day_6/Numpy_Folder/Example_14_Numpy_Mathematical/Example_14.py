# axis-0 for top to bottom sum
# axis-1 for left to right sum

import numpy as np

first=np.array([10,20,30])
second=np.array([40,50,60])
third=np.sum((first,second),axis=0)     # top to bottom
# [50 70 90]
print(third)
print("\n\n")
fourth=np.sum((first,second),axis=1)    # left to right
# [ 60 150]
print(fourth)

