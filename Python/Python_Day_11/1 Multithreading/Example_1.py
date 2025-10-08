import threading

import time

def disp(thread_name):
    for i in range(5):
        #time.sleep(1)
        print(f"{thread_name} - {i}")

# Creating threads
thread1 = threading.Thread(target=disp, args=("First_Thread",))
thread2 = threading.Thread(target=disp, args=("Second_Thread",))

# Starting threads
thread1.start()
thread2.start()

# Wait for both threads to finish
#thread1.join()
#thread2.join()

print("All threads finished.")