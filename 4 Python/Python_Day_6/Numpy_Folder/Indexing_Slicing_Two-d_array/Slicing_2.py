from numpy import *

random.seed(8)
first=random.randint(1,500,30).reshape(6,5)
print("array created is")
print(first)
print("from the 2nd row")
print(first[2:])            #  from 2nd row
print("\n")
print(first[2:,3])          #  from 2nd row and only 3rd column
print("\n")
print(first[2:,2:])         #  from 2nd row and from 2nd column
# let's extract  459  62  and 19
print("\n")
print(first[3:,1:2])
# let's extract 340 361 86 317 156 and 109
print("\n")
print(first[1:4,2:4])
print("\n")
# let's extract  459  156  and 109
print(first[3:4,1:4])