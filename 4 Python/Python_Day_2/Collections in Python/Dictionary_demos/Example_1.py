# first example of Dictionary

mydict = {1:'Amar',2:'Sachin',3:'Vishal'}

print(mydict)

print(mydict[1])
print(mydict[2])
print(mydict[3])
# print(mydict[4])    # KeyError: 4

mydict[2]='Satish' # overwrite the value
print(mydict)
print(mydict.keys())   # print all the keys of dictionary
print(mydict.values())  # print all the values of dictionary

