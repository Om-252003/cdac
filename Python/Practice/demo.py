nums = [1,2,3]
if len(nums) == 1:
    print(nums[0])

evnsum, oddsum  = 0,0
if len(nums) > 1:

    i=0
    while(i<len(nums)):
        evnsum += nums[i]
        i+=2
    j=1
    while(j<len(nums)):
        oddsum +=nums[j]
        j+=2

print(evnsum-oddsum)


