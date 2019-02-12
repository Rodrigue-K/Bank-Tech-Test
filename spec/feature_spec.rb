require 'account'

RSpec.describe "User stories" do 
  let(:account) { Account.new }

    it "Records account balance" do
      expect(account.balance).to eq(0)
    end
    it "Records account transactions" do 
      expect(account.transactions).to eq([])
    end

    it "User can make a deposit and it is added to balance " do 
      account.deposit(200)
      p account.balance
      expect(account.balance).to eq(200)
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




