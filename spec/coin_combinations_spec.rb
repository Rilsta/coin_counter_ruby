require('rspec')
require('coin_combinations.rb')

describe('Float#coin_combinations') do
  it ('return correct coin combination for input') do
    expect((0.25).coin_combinations).to(eq("1 quarter"))
    expect((1.00).coin_combinations).to(eq("1 dollar"))
    expect((0.05).coin_combinations).to(eq("1 nickel"))
    expect((0.01).coin_combinations).to(eq("1 penny"))
    expect((0.10).coin_combinations).to(eq("1 dime"))
  end

  it ('accounts for plural amounts') do
    expect((0.50).coin_combinations).to(eq("2 quarters"))
    expect((0.20).coin_combinations).to(eq("2 dimes"))
    expect((2.00).coin_combinations).to(eq("2 dollars"))
  end
  
  it('replaces plural pennys with with pennies') do
    expect((0.02).coin_combinations).to(eq("2 pennies"))
  end

end
