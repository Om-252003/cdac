import numpy as np

first=np.array([[10,20,30],[40,50,60]])    #  here we've passed list of list
print(first)
print("\n")
for i in range(0,first.__len__()):
    for j in range(0,first[i].__len__()):
        print(first[i][j],"\t",end="")
    print("\n")

print("Type of the array is",type(first))
print("\n")
print("dimension of array is\t",first.ndim)
print("\n")
print("shape of array is\t",first.shape)
