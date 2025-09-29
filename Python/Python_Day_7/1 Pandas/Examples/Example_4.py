# How to create series object from dictionary
from pandas import *

mydict=({1:'Sachin',2:'Rahul',3:'Anil',4:'Rohit'})
print(mydict)
print("\n")
print(type(mydict))
print("Let's create Series from a dictionary")
myseries=Series(mydict)
print(myseries)
print(myseries.index)
print(myseries.values)

'''
{1: 'Sachin', 2: 'Rahul', 3: 'Anil', 4: 'Rohit'}


<class 'dict'>
Let's create Series from a dictionary
1    Sachin
2     Rahul
3      Anil
4     Rohit
dtype: object
Index([1, 2, 3, 4], dtype='int64')
['Sachin' 'Rahul' 'Anil' 'Rohit']
'''