# how to accept values from user inside two-d array

from numpy import *
list=[]
print("how many rows")
rownum=int(input())
print("how many cols")
colnum=int((input()))
print("Enter\t",rownum*colnum," values")
for i in range(1,(rownum*colnum)+1):
        num=int(input())
        list.append(num)

mainarray=array([list]) 
print(mainarray)
mainarray=mainarray.reshape(rownum,colnum)
print("\n")
print(mainarray)