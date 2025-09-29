# changing index

from pandas import *

myseries=Series([10,20,30,40,50])
print(myseries)
myseries.index=['a','b','c','d','e']
print(myseries)
print(myseries[0])
myseries[1]=65   # possible
print(myseries)
myseries.rename({'d':4.5},inplace=True)
print("after renaming")
print(myseries)

'''
0    10
1    20
2    30
3    40
4    50
dtype: int64
a    10
b    20
c    30
d    40
e    50
dtype: int64
10
a    10
b    65
c    30
d    40
e    50
dtype: int64
after renaming
a      10
b      65
c      30
4.5    40
e      50
dtype: int64
'''