class Bank {
  Bank({required this.title, this.balance = 0});

  String title;
  int balance;
  List<int> transactions = [];

  bool deposit(int amount) {
    balance += amount;
    transactions.add(amount);
    return true;
  }

  bool withdraw(int amount) {
    if (balance > amount) {
      balance -= amount;
      transactions.add(-amount);
      return true;
    }
    return false;
  }

  void printTransactions() {
    if (transactions.isEmpty) {
      print('No Transaction Found');
    } else {
      transactions.forEach((transactions) => print(transactions));
      print('end of Transactions');
    }
  }

  String getTitle() => title;
  int getBalance() => balance;
}

void main() {
  Bank myAccount1 = Bank(title: 'Shahzeb');
  print('Title of my account is ${myAccount1.getTitle()}');
  print('the initial bank balance is ${myAccount1.getBalance()}');

  myAccount1.printTransactions();
  myAccount1.deposit(1500);
  myAccount1.withdraw(500);
  myAccount1.deposit(100);
  print(myAccount1.getBalance());
  myAccount1.printTransactions();
}
