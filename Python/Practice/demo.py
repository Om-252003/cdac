s = "A man, a plan, a canal: Panama"
a=""
a += "".join([x for x in s[::] if x.isalpha()])
print(a)