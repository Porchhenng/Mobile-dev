import 'dart:async';
import 'dart:ffi';
import 'dart:io';

class BankAccount{
    // TODO

    late final String _firstName;
    late final String _lastName;
    late final String _accId;
     double _balance;
    String get firstName => this._firstName;
    String get lastName => this._lastName;
    String get accId => this._accId;
    double get balance => this._balance;

    BankAccount({required String firstName,required String lastName,required String accId, required double balance }):
      _firstName = firstName,
      _lastName  = lastName,
      _accId = accId,
      _balance = balance;


    void credit(double amount){
      _balance += amount;
    }

    void withdraw(double amount){
      _balance -= amount;
    }

    void printDetails(){
      print('AccountID: $_accId');
      print('Name: $firstName $lastName');
      print('Balance: \$$_balance');
    }
    
    @override
  String toString() {
    // TODO: implement toString
    return 'Account ID: $accId, Name: $firstName $lastName, Balance: $balance';
  }
}

class Bank {
    // TODO
    late final String _name;

    final Map<String, BankAccount> _accounts = {}; 

    String get name => this._name;

    Bank({required String name}): _name = name;

    BankAccount createAccount({
    required String accId,
    required String firstName,
    required String lastName,
    required double balance,
  }) {
    if (_accounts.containsKey(accId)) {
      throw Exception('Account with ID $accId already exists!');
    }

    var account = BankAccount(
      firstName: firstName,
      lastName: lastName,
      accId: accId,
      balance: balance,
    );
    _accounts[accId] = account;
    return account;
  }
    @override
  String toString() {
    // TODO: implement toString
    return 'Bank: $name';
  }
}
 
void main() {

  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(accId: '100', firstName: 'Ronan', lastName: 'ognor', balance: 0);

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  ronanAccount.printDetails();

  print(BankAccount(firstName: 'cheng', lastName: 'porchheng', accId: '101', balance: 0));

  

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(accId: '100', firstName: 'Honlgy', lastName: 'khmer',balance: 0 ); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}

