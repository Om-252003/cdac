# bind() method  binds the server to a specific IP and port so that it can listen to incoming requests on that IP and port.
# listen() method puts the server into listen mode
# accept() method allows server to wait for client to send the request

""" The process of converting string objects to byte objects is called encoding and the inverse is called decoding. 

The bytes() method takes in an object (a string in our case), the required encoding method, and convert it into a byte object. 

 """
import socket
with socket.socket() as s:
    print("socket created")
    s.bind(("localhost",5000))
    s.listen()
    print("waiting for the client")

    client,address=s.accept()  # returns tuple[socket, _RetAddress] 
    name=client.recv(1024).decode()
    print("connected with\t",address,name)
    client.send(bytes("welcome to the server side",'utf-8'))
    while True:
        message=client.recv(1024).decode()
        print("message from client\t",message)
        message1=input("enter a message to client")
        client.send(bytes(message1,'utf-8'))
    
    