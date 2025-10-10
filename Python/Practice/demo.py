#             11
#          12 12
#       13 13 13
#    14 14 14 14
# 15 15 15 15 15

for i in range(5):
    for j in range(4,i,-1):
        print("_", end="  ")

    for j in range(i+1):
        print(11+i, end=" ")

    print()