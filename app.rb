require 'sinatra/base'

class Battle < Sinatra::Base
  # get '/' do
  #   "Hello Battle!"
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end

  # this should start the server if done correctly
  run! if app_file == $0

end
