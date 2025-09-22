# greet = 'hello'
# greet ="hi"
greet = "welcome"
match greet:
    case "welcome":
        print("it's welcome")
    case "hello":
        print("it's hello")
    case _:
        print("not a valid greet")
