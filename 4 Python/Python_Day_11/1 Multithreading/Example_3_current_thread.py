import threading
import time

def disp(thread_name):
    for i in range(5):
        #time.sleep(1)
        current_thread = threading.current_thread()
        print(f"Thread Name: {current_thread.name}")
        print(f"{thread_name} - {i}")

# Creating threads
thread1 = threading.Thread(target=disp, args=("First_Thread",))
thread2 = threading.Thread(target=disp, args=("Second_Thread",))

# Starting threads
thread1.start()
thread2.start()

# Wait for both threads to finish
thread1.join()
thread2.join()

print("guess who is running main")
current_thread = threading.current_thread()
print(f"Thread Name: {current_thread.name}")
print("All threads finished.")