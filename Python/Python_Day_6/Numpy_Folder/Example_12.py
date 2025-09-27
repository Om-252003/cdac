#  "intersect1d()" to find out common elements between two arrays

import numpy as np
first=np.array([4,5,8,12,15])
second=np.array([11,15,4,8,9])
third=np.intersect1d(first,second)
print(third)
