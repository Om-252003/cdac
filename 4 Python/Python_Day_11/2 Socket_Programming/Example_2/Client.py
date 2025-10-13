import socket

with socket.socket() as c:
    c.connect(("localhost",5000))
    name=input("Enter your name")
    c.send(bytes(name,'utf-8'))
    print(c.recv(1024).decode())
    print("let's have a chat with server")
    while True:
        message=input("enter message to be sent to the server")
        c.send(bytes(message,'utf-8'))
        message1=c.recv(1024).decode()
        print("message from server is\t",message1)