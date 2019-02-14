require './lib/transaction'

class Account 

  attr_reader :transactions, :balance

  def initialize
    @transactions = []
    @balance = 0
  end 

  def deposit(amount)
    @balance += amount
    @transactions.push(Transaction.new('credit', amount, @balance))
  end

  def withdraw(amount)
    @balance -= amount
    @transactions.push(Transaction.new('debit', amount, @balance))
  end

  def statement
    puts '   date    ||  credit  ||  debit  ||  balance  '
    puts '-----------------------------------------------'
    @transactions.each do |x|
      if x.type == "credit"
        puts " #{x.date}||  #{x.amount}     ||         ||  #{x.post_transaction_balance}  "
      else
        puts " #{x.date}||          ||   #{x.amount}   ||  #{x.post_transaction_balance}  "
      end
    end
  end

end
