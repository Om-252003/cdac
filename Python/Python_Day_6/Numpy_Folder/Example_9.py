# initialize numpy array with random numbers
import numpy as np
first=np.random.randint(1,100,10)   # range for random numbers is 1 to 100 and 10 is how many random numbers to be generated
print(first)
print("Double Dimension array")

second=np.random.randint(1,100,12).reshape(3,4)
print(second)