import threading

"""
The with statement automatically acquires the lock (self.lock.acquire()) when entering the block,
and automatically releases it (self.lock.release()) when the block is exited

"""
class MyClass:
    def __init__(self):
        self.lock = threading.Lock()  # Create a lock for synchronization
        self.condition = threading.Condition(self.lock)  # Create a condition variable
        self.current_thread = "ascending"  # Track the current thread

    def disp(self):
        with self.lock:
                for i in range(10):
                    print(f"Ascending: {i}\t{threading.current_thread().name}")
                    if i == 5:
                        self.condition.notify()  # Notify the descending
                        self.condition.wait()  # Wait for the descending thread to finish
                self.condition.notify()


def main():
    m1 = MyClass()  # Shared instance of MyClass
    thread1 = threading.Thread(target=m1.disp, name="First_Thread")
    thread2 = threading.Thread(target=m1.disp, name="Second_Thread")

    thread1.start()
    thread2.start()

    thread1.join()
    thread2.join()

if __name__ == "__main__":
    main()