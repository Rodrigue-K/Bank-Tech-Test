Bank-Tech-Test
-----------

* Ruby 
* Rspec

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

Installation
---------

```
$ git clone 
$ cd Bank_test
$ bundle
```

Running Tests
-------

```
$ cd Bank_test
$ rspec
```

How to use
-------

```
IRB

$ require "./lib/account"
$ account = Account.new
$ account.deposit(700.00)
$ account.withdrawal(100.00)
$ account.balance(600.00)
$ puts account.print_statement

```

User stories
-----------

As a user so that I can buy grocery
I would like to see my account balance.

As a User so that I can keep an eye on my finances.
I would like to be able to see recent transactions.

As a User so that I can buy more stuff.
I would like to be deposit into my account.
I would like to be able to see my balance and transactions change accordingly.

As a User so that I can pay for something in cash.
I would like to be able to withdraw money from my account.
My balance and transactions should change accordingly.


As a User so that I can review my spending.
I would like to be able to view an account statement.
with dates of transaction, balance after transaction, type of transaction.

![alt text](https://i.imgur.com/cWywyiH.png)


Refactoring 
----------

* #statement too long
 - Perhaps split into a class.
* Formatting class for Statement class
* change in balance after a transaction.
* Account class should not be holding the transaction list. - This was prompted by User story two
* Split debit and credit into separate classes that can inherit from Transaction class
* Balance class, so that Account becomes a User Interface 
















