require 'sinatra/base'
require 'sinatra/reloader'
require 'player'

class Battle < Sinatra::Base
  enable :sessions
  $player_one_name
  $player_two_name

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end
  
  post '/names' do
    $player_one = Player.new(params[:player_1_name])
    $player_two = Player.new(params[:player_2_name])
    redirect '/play'
  end 
  
  get '/play' do
    @player_1_name = $player_one.name
    @player_2_name = $player_two.name
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_one.name
    @player_2_name = $player_two.name
    erb :attack
  end

    run! if app_file == $0
end

