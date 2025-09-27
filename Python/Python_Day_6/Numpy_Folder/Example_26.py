# save and load numpy array
import numpy as np

first=np.array([10,20,30,40])
print(first)                    #  array will be printed
np.save("myarray",first)
first=None
print(first)                    # None, no need to worry, we can load the saved array
second=np.load("myarray.npy")   # extension "npy" mandatory
print(second)