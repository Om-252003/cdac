import mysql.connector as m

db = m.connect(host="localhost", user="root", password='12345', database='pythondb1')
cur = db.cursor()
cur.execute("select * from students")
result = cur.fetchall()
print(result)
