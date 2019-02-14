class Statement
  attr_reader :header, :break
  def initialize
    @header = "   date    ||  credit  ||  debit  ||  balance "
    @break = '-----------------------------------------------'
  end
end