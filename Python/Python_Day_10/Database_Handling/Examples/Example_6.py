import mysql.connector as m
mydatabase=m.connect(host="localhost",user="root",password="root",database="pythondb1")
cursor=mydatabase.cursor()
query="insert into dept(dname,loc) values(%s,%s)"
while True:
    dname=input("Enter dname")
    loc=input("Enter location")
    cursor.execute(query,[dname,loc])
    ans=input("Do you wish to continue")
    if(ans=="no"):
        break
mydatabase.commit()