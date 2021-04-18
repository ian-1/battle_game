require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1 = $player_one
    @player_2 = $player_two
    erb :play
  end

  post '/names' do
    $player_one = Player.new(params[:player_1_name])
    $player_two = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/attack' do
    @player_1 = $player_one
    @player_2 = $player_two
    Game.new.attack($player_two)
    erb :attack
  end

  run! if app_file == $PROGRAM_NAME
end
