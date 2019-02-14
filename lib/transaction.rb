class Transaction 

  attr_reader :date, :type, :amount, :post_transaction_balance

  def initialize(type, amount, post_transaction_balance)
    @date = Time.now.strftime("%d/%m/%Y")
    @type = type
    @amount = amount
    @post_transaction_balance = post_transaction_balance
  end

end
