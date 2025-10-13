"""
** (unpacking dictionary) can only be used when calling a function that accepts keyword arguments (i.e., parameters like name=..., age=..., etc.).

"""

def show(name, desig):
    print(f"{name} is a {desig}")

info = {'name': 'Alice', 'desig': 'Engineer'}
#show(**info)  # with unpacking
show(info['name'],info['desig']) # without unpacking