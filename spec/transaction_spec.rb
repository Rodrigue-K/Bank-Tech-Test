require 'transaction'

describe Transaction do
  let(:transaction) { Transaction.new('credit', 100) }
  describe '#initialize' do 
    it 'contains a date' do 
      expect(transaction.date).to eq('13/02/2019')
    end
    it 'contains a type' do 
      debit_transaction = Transaction.new('debit', 100)
      credit_transaction = Transaction.new('credit', 300)
      expect(debit_transaction.type).to eq('debit')
      expect(credit_transaction.type).to eq('credit')
    end
    it 'contains an amount' do 
      expect(transaction.amount).to eq(100)
    end
  end
end
