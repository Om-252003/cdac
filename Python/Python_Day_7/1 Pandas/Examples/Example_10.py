# DataFrame built-in functions
# copy "Book1.csv" file inside pycharm project folder

# e.g. copy "Book1.csv" file inside
# "C:\Users\Nitin\PycharmProjects\pythonProject" folder.
# Here "pythonProject" is assumed to be the name of the
# project which we have created.

from pandas import *

book=read_csv("Book1.csv")
print(book)
print("type of book is\t",type(book))
print("\n")
print("Let's print first 5 records")
print(book.head()) # by default 0 to 5 , 5 is exclusive
print("\n")
print("let's print first 3 records")
print(book.head(3)) # 0 to 3 , 3 is exclusive
print("\n")
print("print all the records except last 3 records")

# 0 to -4
print(book.head(-3))   #  print all the records except last 3 records
print("Let's print last 5 records")
print(book.tail())  #  [-5:]
print("let's print last 2 records")
print("\n")
print(book.tail(2))  # [-2:]
print("\n")
print("print all the records except first 3 records")
#[-(-3):]
print(book.tail(-3))  #  print all the records except first 3 records
print("Total no. of rows and columns in the file")
print(book.shape)
print("\n")
print(book.describe())
print("\n")
print("Let's extract first 3 records with 2 columns only")
print(book.iloc[:3,:2])
print("\n")
print(book.loc[0:4,('name','address')])   #  Access a group of rows and columns by label(s) , 4 is inclusive here
print("Let's drop a particular column")
print(book.drop("age",axis=1))  # here axis=1  means we want to drop the column
print("Let's drop some rows")
print(book.drop([3,4,5,6],axis=0))      # here axis=0  means we want to drop rows
print("let's drop name column and 1,3 ,7 rows")
print(book.drop("name",axis=1).drop([1,3,7],axis=0)) 
# print(book.drop(("name"),axis='columns').drop([1,3,7],axis='rows'))  

# instead of 1 and 0 you can mention 'columns' and 'rows' respectively

# Columns can be dropped at the time of reading itself.

print("\n")
cancel =['address','age']
book1=read_csv("Book1.csv").drop(cancel,axis='columns')
print(book1)


'''
     name  age   address
0   Rohit   35    mumbai
1   Virat   36     delhi
2  Sachin   50    mumbai
3  Ashwin   38   chennai
4  Bumrah   29    mumbai
5   Shami   33  banglore
6  Yuvraj   43     delhi
7   Dhoni   43     delhi
8     Sky   29    mumbai
9   Umesh   30  banglore
type of book is	 <class 'pandas.core.frame.DataFrame'>


Let's print first 5 records
     name  age  address
0   Rohit   35   mumbai
1   Virat   36    delhi
2  Sachin   50   mumbai
3  Ashwin   38  chennai
4  Bumrah   29   mumbai


let's print first 3 records
     name  age address
0   Rohit   35  mumbai
1   Virat   36   delhi
2  Sachin   50  mumbai


print all the records except last 3 records
     name  age   address
0   Rohit   35    mumbai
1   Virat   36     delhi
2  Sachin   50    mumbai
3  Ashwin   38   chennai
4  Bumrah   29    mumbai
5   Shami   33  banglore
6  Yuvraj   43     delhi
Let's print last 5 records
     name  age   address
5   Shami   33  banglore
6  Yuvraj   43     delhi
7   Dhoni   43     delhi
8     Sky   29    mumbai
9   Umesh   30  banglore
let's print last 2 records


    name  age   address
8    Sky   29    mumbai
9  Umesh   30  banglore


print all the records except first 3 records
     name  age   address
3  Ashwin   38   chennai
4  Bumrah   29    mumbai
5   Shami   33  banglore
6  Yuvraj   43     delhi
7   Dhoni   43     delhi
8     Sky   29    mumbai
9   Umesh   30  banglore
Total no. of rows and columns in the file
(10, 3)


             age
count  10.000000
mean   36.600000
std     6.979335
min    29.000000
25%    30.750000
50%    35.500000
75%    41.750000
max    50.000000


Let's extract first 3 records with 2 columns only
     name  age
0   Rohit   35
1   Virat   36
2  Sachin   50


     name  address
0   Rohit   mumbai
1   Virat    delhi
2  Sachin   mumbai
3  Ashwin  chennai
4  Bumrah   mumbai
Let's drop a particular column
     name   address
0   Rohit    mumbai
1   Virat     delhi
2  Sachin    mumbai
3  Ashwin   chennai
4  Bumrah    mumbai
5   Shami  banglore
6  Yuvraj     delhi
7   Dhoni     delhi
8     Sky    mumbai
9   Umesh  banglore
Let's drop some rows
     name  age   address
0   Rohit   35    mumbai
1   Virat   36     delhi
2  Sachin   50    mumbai
7   Dhoni   43     delhi
8     Sky   29    mumbai
9   Umesh   30  banglore
let's drop name column and 1,3 ,7 rows
   age   address
0   35    mumbai
2   50    mumbai
4   29    mumbai
5   33  banglore
6   43     delhi
8   29    mumbai
9   30  banglore


     name
0   Rohit
1   Virat
2  Sachin
3  Ashwin
4  Bumrah
5   Shami
6  Yuvraj
7   Dhoni
8     Sky
9   Umesh
'''