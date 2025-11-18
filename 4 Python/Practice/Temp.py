nums = [1,0,0,0,1,0,0,1]
k = 2
first = -1
cnt=0
for i in range(len(nums)):
    # if first < i:
    #     if nums[i]==1:
    #         first = i
    #         continue
    # if nums[i] == 1:
    #     if (i - first) < k :
    #         print(False)
    #         exit(0)
    #     first = i
    if nums[i]==0:cnt +=1
    if nums[i]==1:
        if cnt<k :
            print(False)
            exit(1000)
        cnt=0


print(True)