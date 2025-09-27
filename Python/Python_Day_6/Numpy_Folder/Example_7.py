""" If you only use the arange function, it will output a one-dimensional array. To make it a two-dimensional array, chain its output with the reshape function. """

import numpy as np
first=np.arange(10,91,10).reshape(3,3)  # 3 rows,3 cols ,  10 to 90 values with 10 as a skip value
print(first)
