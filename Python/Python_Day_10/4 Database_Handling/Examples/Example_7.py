import mysql.connector as m
mydatabase=m.connect(host="localhost",user="root",password="12345",database="pythondb1")
cursor=mydatabase.cursor()

query="update dept set loc=%s where deptno=%s"
loc=input("Enter location")
deptno=input("Enter deptno")
cursor.execute(query,[loc,deptno])
mydatabase.commit()