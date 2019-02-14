require 'account'
require 'timecop'

describe 'Account User stories' do 
  let(:account) { Account.new }
  it 'User can see balance' do
    expect(account.balance).to eq(0)
  end
  it 'User can see transactions' do 
    expect(account.transactions).to eq([])
  end
  it 'User can make a deposit' do 
    account.deposit(200)
    expect(account.balance).to eq(200)
  end 
  it 'User can make a withdrawal' do
    account.deposit(200)
    account.withdraw(100) 
    expect(account.balance).to eq(100)
  end
  # it 'User can see a statement of account' do
  #   Timecop.freeze do
  #   account.deposit(300)
  #   account.deposit(700)
  #   account.withdraw(100)
  #   expect(account.print_statement).to eq('"   date    ||  credit  ||  debit  ||  balance"')
  #   expect(account.print_statement).to eq("-----------------------------------------------")
  #   expect(account.print_statement).to eq("  14/02/2019||  300     ||         ||  100   ")
  #   expect(account.print_statement).to eq("  14/02/2019||  700     ||   700   ||  100   ")
  #   expect(account.print_statement).to eq("  14/02/2019||          ||   100   ||  100   ")
  #  end 
  # end
end
