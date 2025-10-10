import mysql.connector as m
mydatabase=m.connect(host="localhost",user="root",password="12345",database="pythondb1")
cursor=mydatabase.cursor()
query="select * from dept"
cursor.execute(query)
result=cursor.fetchall()     # here we get tuples equivalent to the number of records
for record in result:
    for i in range(0,len(record)):    # traversing through each and every column of respective record
        print(record[i],end=' ')
       print()