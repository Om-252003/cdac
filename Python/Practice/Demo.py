s = 65
for i in range(6):
    if i%2 == 0:
        for j in range(i):
           print(chr(s), end="")
           s+=1

    else:
        last = s+i
        for j in range(last-1, s-1,-1):
            print(chr(j) ,end="")
        s = last
    print()
