require 'account'

RSpec.describe "User stories" do 
  let(:account) { Account.new }

    it "Records account balance" do
      expect(account.balance).to eq(0)
    end
    it "Records account transactions" do 
      expect(account.transactions).to eq([])
    end

    it "User can make a deposit" do 
      account.deposit(200)
      expect(account.balance).to eq(200)
    end 

    it "User can make a withdrawal" do
      account.deposit(200)
      account.withdraw(100) 
      expect(account.balance).to eq(100)
    end
  end



  # it "Access balance" do 
  #   expect { account.balance }.not_to raise_error
  #   end

  # it "Records deposits " do
  #   account.deposit(100)
  #   expect( account.deposit).to
  #   expect{ account.deposits }.not_to raise_error
  #   expect(account.deposits.count).to eq(1)
  # end




