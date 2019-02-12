require 'account'

RSpec.describe Account do 
  let(:account) { described_class.new }
  let(:transactions) { double :transactions }
  context "User creates an account and wants to see balance" do
  describe "#balance" do 
    it "Returns empty balance" do 
      allow(account).to receive(:balance).and_return(0)
      expect(account).to respond_to(:balance)
    end
  end
end
  context "User wants to see a list of transactions" do 
    describe "#transactions" do
      it "Returns empty array" do 
        allow(account).to receive(:transactions).and_return([])
        expect(account).to respond_to(:transactions)
      end
    end
  end

  context "User wants to deposit into account" do 
    describe '#deposit' do 
    it 'Adds amount to balance' do 
      account.deposit(100)
      expect(account.balance).to eq(100)
     end
    it 'Adds deposit to transactions' do 
      account.deposit(100)
      expect(account.transactions).to include(100)
    end
  end 
  
  context "User wants to withdraw from account" do 
    describe '#withdraw' do 
      it 'Deducts amount from balance' do
      account.deposit(200) 
      account.withdraw(100)
      expect(account.balance).to eq(100)
    end
      it 'Deduction to transactions' do 
      account.deposit(200)
      account.withdraw(100)
      expect(account.transactions).to include(100)
      end
    end
  end
end 
end