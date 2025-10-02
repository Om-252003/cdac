# how to read and write a file using "r+" mode

with open("FileDemo.java", "r+") as f:
		data=f.read()
		print(data)
		f.seek(f.tell())  # to place the file pointer at the end
		
		print("enter message\n")
		str = input()
		f.write(str)
		print("lets read again")
		f.seek(0, 0)  # place the file pointer at the beginning
		data=f.read()
		print(data)

print("Done")

