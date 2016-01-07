require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')

get('/') do
  erb(:index)
end

get('/result') do
  @change = params.fetch('change').to_f.coin_combinations
  erb(:result)
end
