import mysql.connector as m
mydatabase=m.connect(host="localhost",user="root",password="12345",database="pythondb1")
cursor=mydatabase.cursor()
query="delete from dept where dname=%s"

dname=input("Enter department to delete the record")
cursor.execute(query,(dname,))     # passing tuple as second argument   comma(,)  is mandatory here as we just have only one value inside the tuple

mydatabase.commit();