# Series object is a one-dimensional labelled or indexed array

from pandas import *

first=Series([100,200,300,400,500])
print(first)
print("\n")
print(type(first))

'''
0    100
1    200
2    300
3    400
4    500
dtype: int64


<class 'pandas.core.series.Series'>
'''