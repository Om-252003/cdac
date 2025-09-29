from pandas import *

mydataframe=DataFrame({'points': [25, 12, 15, 14, 19, 23, 25, 29],
                   'assists': [5, 7, 7, 9, 12, 9, 9, 4],
                   'rebounds': [11, 8, 10, 6, 6, 5, 9, 12],
                   'blocks': [4, 7, 7, 6, 5, 8, 9, 10]})
print(mydataframe)
print("Select Columns by Index")
print(mydataframe.iloc[:,[1,3]])
print("Select Columns in Index Range")
print(mydataframe.iloc[:,1:3])      #  3 is exclusive
print("select columns by name")
print(mydataframe[["assists","blocks"]])