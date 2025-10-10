# executemany function  if we pass list of list to the "execute()" method

from dataclasses import dataclass
import mysql.connector as m
mydatabase=m.connect(host="localhost",user="root",password="12345",database="pythondb1")
cursor=mydatabase.cursor()
query="insert into dept(dname,loc) values(%s,%s)"
mylist=[['accounts','Mumbai'],['placement','Hyderabad']]      # list of list
# cursor.execute(query,mylist)    #  won't work as it is list of list
cursor.executemany(query,mylist)
mydatabase.commit()