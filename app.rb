require 'sinatra/base'
require './lib/chit'

class ChitterManager < Sinatra::Base
  
  get '/' do
    'Welcome to Chitter'
  end

  get '/chits' do
    p ENV
    @chits = Chit.all
    erb :chits
  end



  run! if app_file == $0
end
