""" The NumPy linspace function creates sequences of evenly spaced values within a defined interval. Essentally, you specify a starting point and an ending point of an interval, and then specify the total number of breakpoints you want within that interval (including the start and end points). """

from numpy import *

first=linspace(1,8,num=8)
print(first)
print("\n")
second=linspace(1,8,num=20)     #  num is by default 50  , inclusive of 8

print(second)
