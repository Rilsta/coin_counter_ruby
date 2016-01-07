require('rspec')
require('coin_combinations.rb')

describe('Float#coin_combinations') do
  it ('return 1 quarter for input of 0.25') do
    expect((0.25).coin_combinations).to(eq("1 quarter"))
  end
end
