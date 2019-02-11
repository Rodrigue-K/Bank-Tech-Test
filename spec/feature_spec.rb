require 'account'

RSpec.describe "Account" do 
  context ' User sets up new account' do 
    it "Records account balance" do
      account = Account.new
      expect(account.balance).to eq(0)
    end
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




