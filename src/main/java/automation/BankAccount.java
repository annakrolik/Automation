package automation;

public class BankAccount {
    private int accountBalance;

    public BankAccount(){
        accountBalance = 0;
    }

    public BankAccount(int accountBalance){
        this.accountBalance = accountBalance;

    }

    public boolean withdraw(int amount){
        if (amount > this.accountBalance){
            return false;
        } accountBalance = accountBalance - amount;
        return true;
    }
    public void transfer(int amount){
        accountBalance =+amount;
    }
    public int getAccountBalance(){
        return accountBalance;
    }
}