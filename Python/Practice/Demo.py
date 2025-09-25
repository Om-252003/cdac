dict=[['c',10.0], ['b',20.0], ['a',10.0], ['d',0.0]]
scores = sorted(set([score for name,score in dict]))
print(scores)
max2 = scores[1]
print(max2)
selected = [[name, score] for name, score in dict if score == max2]
print(selected)
names = [name for name,score in selected]
print(names)
names.sort()
print(names)
for i in names:
    print(i)

