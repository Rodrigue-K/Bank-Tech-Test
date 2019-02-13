require 'account'

describe 'User stories' do 
  let(:account) { Account.new }
  it 'Records account balance' do
    expect(account.balance).to eq(0)
  end
  it 'Records account transactions' do 
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
  it 'User can see a statement of account' do
    account.deposit(300)
    account.deposit(700)
    account.withdraw(100)
    expect(account.statement).to include('||date||credit||debit|balance||')
    expect(account.statement).to include('||14/02/18||   ||100||900||')
  end
end
