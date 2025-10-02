
# we can define which specific file to include under archive. 


from zipfile import ZipFile

with ZipFile("temp.zip","w") as newzip:
		newzip.write("Book1.csv")
		newzip.write("ForPandas.xls") 

""" 
newzip=ZipFile("temp.zip","w")
try:
    newzip.write("Book1.csv")
    newzip.write("ForPandas.xls")
finally:
    newzip.close() 
"""

print("Done")

