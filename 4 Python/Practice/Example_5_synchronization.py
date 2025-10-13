import threading
import time

class MyClass:
    def ascending(self):
        # Synchronize access to this method using a lock
        with self.lock:
            for i in range(10):
                print(f"Hello\t{i}")
                time.sleep(1) # not required actually

    def descending(self):
        # Synchronize access to this method using a lock
        with self.lock:
            for i in range(10, 0, -1):
                print(f"Hello\t{i}")
                time.sleep(1) # not required actually

    def __init__(self):
        self.lock = threading.Lock()  # Create a lock for synchronization


def main():
    m1 = MyClass()  # Shared instance of MyClass
    thread1 = threading.Thread(target=m1.ascending)
    thread2 = threading.Thread(target=m1.descending)

    thread1.start()
    thread2.start()


if __name__ == "__main__":
    main()