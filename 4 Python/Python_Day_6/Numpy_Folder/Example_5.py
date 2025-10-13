# initialize arrays with a specific number

import numpy as np

first=np.full((1,4),20)         #  1 row, 4 columns , all should be initialized with 20
print(first)
'''[[20 20 20 20]]'''

print("\n")

second=np.full((3,2),15)        #  3 rows, 2 columns, all should be initialized with 15
print(second)
'''[[15 15]
 [15 15]
 [15 15]]'''