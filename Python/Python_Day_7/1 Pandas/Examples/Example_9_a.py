# extract DataFrame columns as list

from pandas import *

mydataframe=DataFrame({"proid":range(1,5),"proname":['soap','perfume','deo','powder']})
print(mydataframe)
mylist=mydataframe["proid"].values.tolist()       # extract values of "proid" only and convert them to list
print(mylist)
mylist=mydataframe[["proname","proid"]].values.tolist() # extract values of "proname and proid" and convert them to list
print(mylist)
mylist1=mydataframe[["proid","proname"]].values.tolist()
print(mylist1)

'''
D:\cdac\Python\Practice\.venv\Scripts\python.exe D:\cdac\Python\Practice\Example_1.py 
   proid  proname
0      1     soap
1      2  perfume
2      3      deo
3      4   powder
[1, 2, 3, 4]
[['soap', 1], ['perfume', 2], ['deo', 3], ['powder', 4]]
[[1, 'soap'], [2, 'perfume'], [3, 'deo'], [4, 'powder']]

Process finished with exit code 0

'''