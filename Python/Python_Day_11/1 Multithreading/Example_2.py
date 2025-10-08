import threading
import time

def disp():
    for i in range(5):
        #time.sleep(1)
        current_thread = threading.current_thread()
        print(f"{current_thread.name} - {i}")

# Creating threads
thread1 = threading.Thread(target=disp)
thread1.name="First"
thread2 = threading.Thread(target=disp)
thread2.name="Second"

# Starting threads
thread1.start()
thread2.start()

# Wait for both threads to finish
thread1.join()
thread2.join()

print("guess who is running main")
print(f"Thread Name: {threading.current_thread().name}")
print("All threads finished.")