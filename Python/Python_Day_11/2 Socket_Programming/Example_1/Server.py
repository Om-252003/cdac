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
    print("client is\t",client)
    print("address is\t",address)
    # converts byte string received from client
    # into string format
    name=client.recv(1024).decode()
    print("connected with\t",address,name)

    # converting the string into bytes using the
    # UTF-8 encoding.
    client.send(bytes(f"{name} welcome to the server side",'utf-8'))
    
    