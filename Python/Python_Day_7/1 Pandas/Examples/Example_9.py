# DataFrame is a two dimensional labelled data structure
# DataFrame comprises of rows and columns

from pandas import *

mydict={"Name":['Sachin','Rahul','Anil'],"Age":[30,35,38]}
print(mydict)
mydataframe=DataFrame(mydict)
print(mydataframe)
print("\n")
print(type(mydataframe))
print(mydataframe.to_string(index=False))

'''
{'Name': ['Sachin', 'Rahul', 'Anil'], 'Age': [30, 35, 38]}
     Name  Age
0  Sachin   30
1   Rahul   35
2    Anil   38


<class 'pandas.core.frame.DataFrame'>
  Name  Age
Sachin   30
 Rahul   35
  Anil   38

'''