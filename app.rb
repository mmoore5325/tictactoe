require 'sinatra'
require 'rubygems'
require_relative 'random_ai.rb'
require_relative 'unbeatable_ai.rb'
require_relative 'sequential_ai.rb'
require_relative 'board.rb'

enable :sessions

ai = ""


get '/' do
    session[:board] = Board.new
    #session[:board] = Board.board
    erb :home
end

get '/rules' do
    erb :rules
end

get '/history' do
    erb :history
end

get '/player_1_name' do
    erb :player_1_name
end

post '/player_1_name' do
	player_1_name = params[:player_1_name]
	redirect '/player_2_name?player_1_name=' + player_1_name
end

get '/player_2_name' do
    erb :player_2_name
end

post '/player_2_name' do
	player_1_name = params[:player_1_name]
    player_2_name = params[:player_2_name]
	redirect '/play_game?player_1_name=' + player_1_name + '&player_2_name=' + player_2_name
end

get '/play_game' do
    erb :play_game, :locals => {:board => session[:board].board}
    #the above saves your board and lets you pull it everytime you call it?  Pushes your board into the erb.
end