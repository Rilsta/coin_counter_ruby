require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')

get('/') do
  File.read(File.join('public', 'css/styles.css'))
  @title = "Coin Combinations!"
  erb(:index)
end

get('/result') do
  @title = "Results"
  @change = params.fetch('change').to_f.coin_combinations
  erb(:result)
end
