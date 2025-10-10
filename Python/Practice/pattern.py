for i in range(5):
    for j in range(5,i,-1):
        print("_", end='  ')

    for j in range(i+1):
        print(11+i, end=' ')
    print()