require 'account'
require 'transaction'

describe Account do 
  let(:account) { described_class.new }
  let(:transaction) { double('transaction', :type => "credit", :amount => 100 )}
  
  context 'User creates an account and wants to see balance' do
    describe '#balance' do 
      it 'Returns empty balance' do 
        expect(account.balance).to eq(0)
      end
    end
  end
  
  context 'User wants to see a list of transactions' do 
    describe '#transactions' do
      it 'Returns empty array' do
        expect(account.transactions).to eq([])
      end
    end
  end
  
  context 'User wants to deposit into account' do 
    describe '#deposit' do 
      it 'Adds amount to balance' do 
        account.deposit(100)
        expect(account.balance).to eq(100)
      end
      it 'Adds deposit to transactions' do 
        account.deposit(100)
        expect(account.transactions.count).to eq(1)
      end
    end 
  end
  
  context 'User wants to withdraw from account' do 
    describe '#withdraw' do 
      it 'Deducts amount from balance' do
        account.deposit(200) 
        account.withdraw(100)
        expect(account.balance).to eq(100)
      end
      it 'Adds deduction to transactions' do 
        account.deposit(200)
        account.withdraw(100)
        expect(account.transactions.count).to eq(2)
      end
    end
  end 
  
  context 'User wants to see recent transactions' do
    describe '#statement' do 
      it 'prints out a statement with transactions' do
        allow(account).to receive(:transactions).and_return([transaction])
        expect(account.statement).to include('||date||credit||debit|balance||')
        expect(account.statement).to include('||13/02/2019||100||  |100||')
      end
    end
  end
end
    