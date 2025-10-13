# more pandas functions
""" Using numeric_only=True causes df.mean() to ignore columns that contain non-numbers, and only calculate the mean for columns that only contain numbers. """

from pandas import *

iris=read_csv("iris.csv")
print(iris)
print("\n")
print(iris.mean(numeric_only=True))
print("\n")
print(iris.median(numeric_only=True))
print("\n")
print(iris.min(numeric_only=True))
print("\n")
print(iris.max(numeric_only=True))