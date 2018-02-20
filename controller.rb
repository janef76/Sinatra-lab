require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/game.rb')


get '/home' do
  erb(:home)
end

get '/play/:player1/:player2' do
  game = Game.new(params[:player1], params[:player2])
  @result = game.play()
  erb(:result)
end
