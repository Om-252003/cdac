import numpy as np

# sort without any axis

a = np.array([[12, 25], [30, 18]])
arr1 = np.sort(a, axis=None)
print("\nAlong None axis : \n", arr1)

# sort along the first axis
a = np.array([[12, 25], [30, 18]])
arr1 = np.sort(a, axis=0) # top to bottom
# 12 will be compared with 30, 25 will be compared with 18
print("Along 0 axis : \n", arr1)

a = np.array([[12, 25], [30, 18]])
arr1 = np.sort(a, axis=1) # left to right
# 12 will be compared to 25, 30 will be compared to 18
print("\nAlong 1 axis : \n", arr1)

print("Reverse order top to bottom\n")
arr1 = -np.sort(-a, axis=0)
print(arr1)
print("Reverse order left to right\n")
arr1 = -np.sort(-a, axis=1)
print(arr1)
print("****************")
myar = np.array([[[10, 20, 30], [4, 50, 6]], [[70, 8, 90], [65, 110, 12]]])
print(myar)
print("Ascending order 3d array axis 0")
arr1 = np.sort(myar, axis=0)
"""
in 3d array axis 0 means no. of 2d arrays. Since we have 2 2d arrays
each and every element of 1st 2d array will be compared with 2nd 2d array

10 will be compared with 70, 20 will be with 8, 30 will be with 90
4 will be with 65, 50 will be with 110, 6 will be with 12
"""

print(arr1)
print("Ascending order 3d array axis 1")
arr1 = np.sort(myar, axis=1)
""" 
in 3d array axis 1 means axis 0 of 2d array i.e. top to bottom
so in each 2d array elements will be compared on top to bottom basis
i.e.
10 will be compared with 4, 20 will be with 50, 30 will be compared with 6
70 will be compared with 65, 8 will be compared with 110, 90 will be compared with 12"""

print(arr1)

print("Ascending order 3d array axis 2")
arr1 = np.sort(myar, axis=2)
"""
in 3d array axis 2 means axis 1 of 2d array which means left to right
so each individual array of each 2d array will be compared from left to right
i.e. 10 will be compared with 20 and 30
4 will be compared with 50 and 60
and so on....
"""
print(arr1)
print("Reverse order 3d array axis 0\n")
arr1 = -np.sort(-myar, axis=0)
print(arr1)
print("Reverse order 3d array axis 1\n")

arr1 = -np.sort(-myar, axis=1)
print(arr1)
print("Reverse order 3d array axis 2\n")

arr1 = -np.sort(-myar, axis=2)
print(arr1)


