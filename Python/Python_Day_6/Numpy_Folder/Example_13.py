#  "setdiff1d()" to find out unique elements in first array
# result is always sorted

import numpy as np
first=np.array([4,25,8,32,15])
second=np.array([11,25,1,2,4,8,9])
third=np.setdiff1d(first,second)      #  unique elements inside "first"  array
print(third)
print("\n")
fourth=np.setdiff1d(second,first)     # unique elements inside "second" array
print(fourth)
