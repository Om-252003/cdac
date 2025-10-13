import socket

with socket.socket() as c:
    c.connect(("localhost",5000))
    name=input("Enter your name")

    # convert the input string into bytes.
    c.send(bytes(name,'utf-8'))

    # decodes the response which comes as byte string
    # into a standard string format
    print(c.recv(1024).decode())