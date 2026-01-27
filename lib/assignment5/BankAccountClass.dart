class BankAccount{
  late double  accountID;
  late double balance;
  BankAccount(this.accountID,this.balance){}
  BankAccount.init(){
    this.balance==0;
  }
   void deposit(double amount) {
    if(amount>0) {
      print("deposit :$amount ");
      balance += amount;
      print("balance = $balance");
    }
  }
   void withdraw(double amount) {
    if (amount > 0 && balance >= amount) {
      balance -= amount;
     print(" withdrawal successful");
    }
    print("insufficient balance" );
  }

}