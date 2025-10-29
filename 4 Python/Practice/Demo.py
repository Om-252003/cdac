# Input
# ["Bank", "withdraw", "transfer", "deposit", "transfer", "withdraw"]
# [[[10, 100, 20, 50, 30]], [3, 10], [5, 1, 20], [5, 20], [3, 4, 15], [10, 50]]
# Output
# [null, true, true, true, false, false]

class Bank:

    def __init__(self, balance: list[int]):
        self.bal = balance
        self.n = len(balance)
    def transfer(self, account1: int, account2: int, money: int) -> bool:

    def deposit(self, account: int, money: int) -> bool:

    def withdraw(self, account: int, money: int) -> bool:

# Your Bank object will be instantiated and called as such:
# obj = Bank(balance)
# param_1 = obj.transfer(account1,account2,money)
# param_2 = obj.deposit(account,money)
# param_3 = obj.withdraw(account,money)