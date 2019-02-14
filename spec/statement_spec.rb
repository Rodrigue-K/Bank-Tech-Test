require 'statement'

describe Statement do 
  let(:statement) { described_class.new }
  let(:transactions) { double :transactions}
  it 'has a header' do 
    expect(statement.header).to eq("   date    ||  credit  ||  debit  ||  balance ")
  end
  it 'has a break' do 
    expect(statement.break).to eq('-----------------------------------------------')
  end
end 