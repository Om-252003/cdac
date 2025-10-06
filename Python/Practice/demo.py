s = "   -042"
temp = s.strip()
print(temp)
for i in temp:
    if i == '-':
        sign = -1
# sums=0
# while temp>0 :
#     r = temp%10
#     temp=temp//10
#     sums=(sums*10) + r
#
#     if (sums < (-2) ** 31)  or sums  > ((2 ** 31) - 1):
#         print(0)
#         exit(123)
#
# print(-sums) if x<0 else print(sums)