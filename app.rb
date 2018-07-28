require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    "Hello Battle!"
  end

  # this should start the server if done correctly
  run! if app_file == $0
end
