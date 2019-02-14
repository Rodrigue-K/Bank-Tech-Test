require 'transaction'
require 'timecop'

describe Transaction do
  let(:transaction) { Transaction.new('credit', 100, 100) }
  describe '#initialize' do 
    it 'contains a date' do 
      Timecop.freeze do 
      expect(transaction.date).to eq(Time.now.strftime("%d/%m/%Y"))
    end
   end
    it 'contains a type' do 
      debit_transaction = Transaction.new('debit', 100, -100)
      credit_transaction = Transaction.new('credit', 300, 200)
      expect(debit_transaction.type).to eq('debit')
      expect(credit_transaction.type).to eq('credit')
    end
    it 'contains an amount' do 
      expect(transaction.amount).to eq(100)
    end
    it 'contains a post transaction balance' do
      credit_transaction = transaction
      expect(credit_transaction.post_transaction_balance).to eq(100)
    end
  end
end