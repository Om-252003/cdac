# adding a scalar value to series elements  and adding two series

from pandas import *
myseries=Series([10,20,30,40,50])
print(myseries)
print("\n")
print(myseries+4)
print("\n")
myseries1=Series([1,2,3,4,5])
print(myseries+myseries1)

'''
0    10
1    20
2    30
3    40
4    50
dtype: int64


0    14
1    24
2    34
3    44
4    54
dtype: int64


0    11
1    22
2    33
3    44
4    55
dtype: int64
'''

