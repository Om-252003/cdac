import numpy  as np

myar=np.array([[10,20,30],[40,50,60],[70,80,90]])

print("entire sum")
print(np.sum(myar))
print("axis 0 sum")
print(np.sum(myar,axis=0))  # chopping something from top to bottom
print("axis 1 sum")
print(np.sum(myar,axis=1))  # chopping something from left to right



