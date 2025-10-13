from numpy import *

first=array([[10,20,30],[40,50,60],[70,80,90]])
# slicing syntax
#  arrayname [row range,col range]

second=first[:2]     # start from 0th row and go till 2nd row,   2 is exclusive  this is only for row as you haven't given column

print(second)

third=first[:2,1:3]  #  row 0 to 1    column 1 to 2  , 3 is exclusive
print(third)