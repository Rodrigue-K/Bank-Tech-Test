class Account

  attr_reader :transactions, :balance

  def initialize
    @transactions = []
    @balance = 0
  end 


  def deposit(amount)
    @transactions.push(amount)
    @balance += amount
  end

  def withdraw(amount)
    @transactions.push(amount)
    @balance -= amount
  end




  


end