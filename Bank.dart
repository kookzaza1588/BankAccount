class BankAccount{
String? _name ;
double? _balance; 


BankAccount(this._name,this._balance,){
}

String get name => _name!;
set name(String name) => this._name = name ;

double get balance => _balance!;
set balance(double balance) => this._balance = balance ;



void  desposit(double amount)  => print("ชื่อ ${name} : ฝากเงิน ${amount} บาท ยอดเงินคงเหลือ ${balance += amount} บาท");
void withdraw(double amount) => print("ชื่อ ${name} : ถอนเงิน ${amount} บาท ยอดเงินคงเหลือ ${balance -= amount} บาท") ;
void Showbalance() => print("เงินฝากทั้งหมด = $balance บาท") ;

}

class SavingAccount extends BankAccount{
  double? _interestRate;

  SavingAccount(name,balance, this._interestRate):super(name,balance);
   double get interestRate => _interestRate!;
  set interestRate(double interestRate) => this._interestRate = interestRate;

  void addinterest(double interestRate){
    balance = (balance *interestRate / 100) + balance;
    print('ชื่อ ${name} : ดอกเบี้ย : $interestRate ยอดเงินคงเหลือ $balance บาท');
    }


}
void main(List<String> args) {
  //var bankAccount = BankAccount("film",1000);
  
  var savingAccount = SavingAccount("Film", 2000.0, 0);
  savingAccount.desposit(400);
  savingAccount.Showbalance();
  savingAccount.withdraw(100);
  savingAccount.Showbalance();
  savingAccount.addinterest(0.25);
  savingAccount.Showbalance();
 
}
