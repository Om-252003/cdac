""" randint() function generates new set of random numbers everytime. If we want to fix the generation of random numbers,
we should use "seed()" function by passing any number as an argument. """

from numpy import *

random.seed(15)    # this can be any number  , try commenting this

first=random.randint(1,100,12)
print(first)     # no matter how many times we execute the code, it will display same set of numbers
print("size of the array is\t",first.size)

