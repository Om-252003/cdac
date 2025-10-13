""" The NumPy linspace function creates sequences of evenly spaced values within a defined interval. Essentally, you specify a starting point and an ending point of an interval, and then specify the total number of breakpoints you want within that interval (including the start and end points). """

from numpy import *

first=linspace(1,8,num=8)
print(first)
print("\n")
second=linspace(1,8,num=20)     #  num is by default 50  , inclusive of 8

print(second)

'''
[1. 2. 3. 4. 5. 6. 7. 8.]


[1.         1.36842105 1.73684211 2.10526316 2.47368421 2.84210526
 3.21052632 3.57894737 3.94736842 4.31578947 4.68421053 5.05263158
 5.42105263 5.78947368 6.15789474 6.52631579 6.89473684 7.26315789
 7.63157895 8.        ]
 '''