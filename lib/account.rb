class Account

  attr_reader :transactions, :balance

  def initialize
    @transactions = []
    @balance = 0
  end 

  def deposit(amount)
    @transactions.push(Transaction.new('credit', amount))
    @balance += amount
  end

  def withdraw(amount)
    @transactions.push(Transaction.new('debit', amount))
    @balance -= amount
  end

  def statement
    "||date||credit||debit|balance||"
  end

end
