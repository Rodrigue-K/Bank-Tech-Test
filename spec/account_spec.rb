require 'account'

RSpec.describe Account do 
  let(:account) { described_class.new }
  # let(:amount) { double :amount }
  # let(:transactions) { double :transactions }

  context "User creates an account and wants to see balance" do
    it "Returns empty balance" do 
      allow(account).to receive(:balance).and_return(0)
      expect(account).to respond_to(:balance)
    end
  end

  #   it "Returns an empty transaction list" do
  #     expect(account.transactions.empty?).to be_truthy
  #   end 
  # end
  # describe '#Deposit' do 
  #   context "User deposits money into a new account" do
  #     it "Adds deposit into trasactions" do

  #       allow(account).to receive(:deposit).with(:amount)
  #       expect(account.transactions).to contain(:amount)
  #     end
  #   end
  # end
end