# List comprehensions are used for creating new lists from
# other iterables like tuples, strings, arrays, lists, etc.

# A list comprehension consists of brackets containing the expression, 
# which is executed for each element along with the for loop to iterate over each # element. 

# list contains all even numbers between 4 to 20

mylist = [i for i in range(4,20) if i%2 == 0]

print(mylist)