from numpy import *

first=array([10,20,30,40,50,60])
print(first)
print("\n")
second=first[2:4]    #  4 is exclusive
print("after slicing")
print(second)
third=first[1:5:2]     #  2 is a skip value,  if not given it is by default 1
print("\n")
print(third)
fourth=first[3:]       #  start from the 3rd position and go till end
print("\n")
print(fourth)
print("\n")
fifth=first[:4]        #  start from 0 and go till 3 ,  4 is exclusive
print(fifth)
sixth=first[-2:]       #  last two elements   , start from second last and go till end
print("\n")
print(sixth)
print("\n")
seventh=first[:-2]     # start from zero and go till second last,   second last is exclusive
print(seventh)
eighth=first[-4:-1]    # start from -4 i.e. number 30  and go till last , last is exclusive
print("\n")
print(eighth)