require 'sinatra'
require 'sinatra/contrib'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
   enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.players[@game.index_defence])
    erb :attack
  end

  get '/switch' do
    @game = $game
    @game.switch_players
    redirect '/play'
  end

  run! if app_file == $0
end