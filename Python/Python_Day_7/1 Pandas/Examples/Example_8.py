from pandas import *

myseries=Series([10,20,30,40,50,60])
print(myseries)
print("\n")
print(myseries.sum())
print("\n")
print(myseries.add(3))
print("\n")
print(myseries.subtract(5))
print("\n")
print(myseries.divide(2))
print("\n")
print(myseries.mul(4))

'''
0    10
1    20
2    30
3    40
4    50
5    60
dtype: int64


210


0    13
1    23
2    33
3    43
4    53
5    63
dtype: int64


0     5
1    15
2    25
3    35
4    45
5    55
dtype: int64


0     5.0
1    10.0
2    15.0
3    20.0
4    25.0
5    30.0
dtype: float64


0     40
1     80
2    120
3    160
4    200
5    240
dtype: int64
'''