# how to create database using Python

import mysql.connector as m
 
mydatabase=m.connect(host="localhost",user="root",password="12345")
cursor=mydatabase.cursor()
cursor.execute("create database pythondb1")   # go and check inside MySQL whether database has been created or not
