myset={x for x in range(1,11)}
print(myset)

mydictionary={"soap":100,"perfume":300,"deo":400,"hairoil":250,"babysoap":100}

myset1={x for x in mydictionary.values()}
print(myset1)

myset2={x for x in mydictionary.keys() if len(x)>3}
print(myset2)