class BankAccount {
  double? _balance;
  String? _name;

  BankAccount(this._name, this._balance);

  double get balance => _balance!;
  set balance(double balance) => this._balance = balance;

  String get name => _name!;
  set name(String name) => this._name = name;

  void deposit(double amount) => print(
      "ชื่อ ${name} : ฝากเงิน ${amount} บาท ยอดเงินคงเหลือ ${balance += amount} บาท");
  void withdraw(double amount) => print(
      "ชื่อ ${name} : ถอนเงิน ${amount} บาท ยอดเงินคงเหลือ ${balance -= amount} บาท");
  void ShowBalance() => print("เงินฝากทั้งหมด = $balance บาท");
}

class SavingAccount extends BankAccount {
  double? _interestRate;

  SavingAccount(String name, double balance, this._interestRate): super(name, balance);

  double get interestRate => _interestRate!;
  set interestRate(double interestRate) => this._interestRate = interestRate;

  void addInterest() {
    balance = (balance * _interestRate! / 100) + balance;
    print('ชื่อ ${name} : ดอกเบี้ย : $_interestRate% ยอดเงินคงเหลือ $balance บาท');
  }
}

void main() {
  

  var savingaccount = SavingAccount("Film", 2000, 0.25);
  print("");
  savingaccount.deposit(400);
  savingaccount.ShowBalance();
  print("");
  savingaccount.withdraw(100);
  savingaccount.ShowBalance();
  print("");
  savingaccount.addInterest();
  savingaccount.ShowBalance();
  print("");
}