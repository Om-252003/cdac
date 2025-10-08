import math as m
n=15331
for i in range(2,m.ceil(m.sqrt(n)+1)):
    if n%i == 0:
        print(False)
        exit(100)

print(True)