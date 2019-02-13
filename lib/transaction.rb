require_relative 'account'

class Transaction < Account
  attr_reader :date, :type, :amount

  def initialize(type, amount)
    @date = Time.now.strftime("%d/%m/%Y")
    @type = type
    @amount = amount
  end

end
