import numpy as np
print("Let's try with 3 arrays")
a=np.array([[10,20,30],[40,50,60]])
b=np.array([[70,80,90],[100,110,120]])
c=np.array([[5,9,11],[15,17,18]])
print("output of axis=0")
print("**************")
d=np.sum((a,b,c),axis=0)      
print(d)
""" [[ 85 109 131]  
 [155 177 198]] """ 
print("output of axis=1")
print("*************")
e=np.sum((a,b,c),axis=1)
print(e)
""" [[ 50  70  90]  
 [170 190 210]  
 [ 20  26  29]] """
print("output of axis=2")
print("************")
f=np.sum((a,b,c),axis=2)
print(f)
""" [[ 60 150]
 [240 330]
 [ 25  50]] """