import threading
import time
class MyClass:
    def __init__(self):
        self.lock = threading.Lock()  # Create a lock for synchronization
        
    def disp(self):
        # Synchronize access to this method using a lock
        with self.lock:
            for i in range(10):
                print(f"Hello\t{i}")
                time.sleep(0.25)


def main():
    m1 = MyClass()  # Shared instance of MyClass
    m2 = MyClass() # try this
    thread1 = threading.Thread(target=m1.disp)
    thread2 = threading.Thread(target=m1.disp)
    #thread2 = threading.Thread(target=m2.disp)  # try this
    thread1.start()
    thread2.start()


if __name__ == "__main__":
    main()