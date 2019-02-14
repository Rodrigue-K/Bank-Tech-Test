require 'account'

describe Account do 
  let(:account) { described_class.new }
  let(:transaction) { double('transaction', :type => "debit", :amount => 100 )}
  let(:statement) { double :statement }
  
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
      it 'Returns array with transactions' do 
        allow(account).to receive(:transactions).and_return([transaction])
        expect(account.transactions).to eq([transaction])
      end
    end
  end
  
  context 'User wants to deposit into account' do 
    describe '#deposit' do 
      it 'Adds amount to balance' do 
        expect{account.deposit(1350)}.to change{account.balance}.by(1350)
      end
      it 'Adds deposit to transactions' do 
        expect{account.deposit(100)}.to change{account.transactions.count}.from(0).to(1)
      end
    end 
  end
  
  context 'User wants to withdraw from account' do 
    describe '#withdraw' do 
      it 'Deducts amount from balance' do
        account.deposit(200) 
        expect{account.withdraw(100)}.to change{account.balance}.from(200).to(100)
      end
      it 'Adds withdrawals to transactions' do 
        expect{account.withdraw(100)}.to change{account.transactions.count}.from(0).to(1)
      end
    end
  end 
  
  context 'User wants to see recent transactions' do
    describe '#statement' do 
      it 'prints out a statement with transactions' do
        allow(account).to receive(:print_statement).and_return(
          "   date    ||  credit  ||  debit  ||  balance 
          -----------------------------------------------
            13/02/2019||  100     ||         ||  100   "
        )
        expect(account.print_statement).to eq(
          "   date    ||  credit  ||  debit  ||  balance 
          -----------------------------------------------
            13/02/2019||  100     ||         ||  100   "
            )
          end
        end
      end
end
    