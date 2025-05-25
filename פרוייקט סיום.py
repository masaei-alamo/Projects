
import datetime
def readAccounts():
    accounts_list = []
    account_file = open('accounts.csv', 'r')
    for i in account_file:
        split_acc = i[:-1].split(',')
        tump_account = tuple(split_acc)
        accounts_list.append(tump_account)
    account_file.close()
    return accounts_list

def readtransaction():
    transaction_list = []
    transaction_file = open('transaction.csv', 'r')
    for i in transaction_file:
        split_acc = i[:-1].split(',')
        tump_transaction = tuple(split_acc)
        transaction_list.append(tump_transaction)
    transaction_file.close()
    return transaction_list

def init():
    account = readAccounts()
    transaction = readtransaction()
    return account,transaction

def saveAccounts(list):
    file_acc = open('accounts.csv','w')
    for tupel in list:
        line = str(tupel[0])+',' + str(tupel[1]) + ',' + str(tupel[2])+'\n'
        file_acc.write(line)
    file_acc.close()

def saveTransactions(transaction_list):
    file = open('transaction.csv', 'w')
    for transaction_tupel in transaction_list:
        line = transaction_tupel[0] + ',' + transaction_tupel[1] + ',' + transaction_tupel[2] + '\n'
        file.write(line)
    file.close()

def Save():
   saveAccounts(readAccounts())
   saveTransactions(readtransaction())

def menu():
    user_choose = int(input("1.Create a new account\n2.Deposit to account\n3.Withdrawal Calculator\n4.Balance clarification\n5.Account transaction report\n6.exit\ntap your desired action:"))
    if user_choose == 1:
        add_account()
    elif user_choose == 2:
        deposit()
    elif user_choose == 3:
        withdraw()
    elif user_choose == 4:
        balance()
    elif user_choose == 5:
        report()
    elif user_choose == 6:
        return 6

def add_account():
    account_number = input("enter your account number")
    customer_name = input("enter your name ")
    new_account = [account_number, ',0,', customer_name]
    bool = True
    account = readAccounts()
    for i in account:
        if account_number == i[0]:
            bool = False
            break
    accounts = open('accounts.csv','a')
    if bool:
        accounts.writelines(new_account)
        accounts.write('\n')
        print('account been added to system')
    elif bool == False:
        print('account number exists, use another one')
    accounts.close()

def deposit():
    list_account = readAccounts()
    number = input('enter number account: ')
    deposit = float(input('enter amount of the deposit: '))
    if func_account(list_account,number,deposit):
        print('Update successful')
        saveAccounts(list_account)
    else:
        print("Account not available")

def func_account(account_list,num,deposit):
    DATE = datetime.datetime.now()
    date = DATE.strftime('%d/%m/%Y %H:%M')
    date = str(date)
    for tup in account_list[1:]:
        number_account,balance,full_name = tup
        deposit = int(deposit)
        balance = float (balance)
        if number_account == num and deposit > 0:
            sum_balance = balance + deposit
            account_list.remove(tup)
            account_list.append((num,sum_balance,full_name))
            file_trans = open('transaction.csv', 'a')
            file_trans.write(str(num))
            file_trans.write(",")
            file_trans.write(str(date))
            file_trans.write(",")
            file_trans.write(str(deposit))
            file_trans.write("\n")
            return True
    return False

def withdraw():
    account_list = readAccounts()
    num = input('enter number account: ')
    deposit = float(input('Enter withdrawal amount(negative number): '))
    if updat_account_withdraw(account_list,num,deposit):
        print('updat sccidet')
        saveAccounts(account_list)
    else:
        print("the number account is not avanble or the withdrawal is not confirmed")

def updat_account_withdraw(accountlist,number,deposit):
    x = datetime.datetime.now()
    date = x.strftime('%d/%m/%Y %H:%M')
    date = str(date)
    for tupel in accountlist[1:]:
        number_account,balace,full_name=tupel
        deposit = int(deposit)
        balace=float (balace)
        if number_account==number and deposit < 0 :
            deposit*-1
            if balace >= deposit:
                sum_balanc = balace + deposit
                accountlist.remove(tupel)
                accountlist.append((number,sum_balanc,full_name))
                file = open('transaction.csv', 'a')
                file.write(str(number))
                file.write(",")
                file.write(str(date))
                file.write(",")
                file.write(str(deposit))
                file.write("\n")
            return True

    return False

def balance():
    account_list = readAccounts()
    number_account = input("enter your number account:")
    bool  = True
    for i in account_list[1:]:
        number, balance, full_name = i
        if number == number_account:
            print('your balance is :', balance)
            bool = False
    if bool:
        print("The account number  not exist")


def report():
    Accounts_list = readAccounts()
    transaction_list = readtransaction()
    number_account=input("Enter your number account: ")
    bool = False
    for i in Accounts_list:
        if number_account == i[0]:
            bool = True
    if bool:
        print('Account:'.ljust(40),'Transactions:'.ljust(40))
        for a in Accounts_list:
            if number_account == a[0]:
                print(a)
                break
        for b in transaction_list:
            if number_account == b[0]:
                print("".ljust(40), end="")
                print(b)
    else:
        print('The account does not exist')

def main():
    Accounts_list,transaction_list = init()
    x = 0
    while menu() != 6:
        menu()
    Save()

main()