# Nested Dictionary

mydict = {1:'Amar',2:'Sachin',3:{'A':100,'B':200,'C':300},4:'Vishal'}

print(mydict)

print(mydict[1])
print(mydict[2])
print(mydict[3])
# Displaying nested dictionary
print(mydict[3]['A'])
print(mydict[3]['B'])
print(mydict[3]['C'])
print(mydict[4])

mydict[2]='Satish' # overwrite the value
print(mydict)
print(mydict.keys())   # print all the keys of dictionary
print(mydict.values())  # print all the values of dictionary

