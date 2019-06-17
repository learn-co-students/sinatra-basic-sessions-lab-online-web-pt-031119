require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "something"
  end
  
  get '/' do
    @session = session
    erb :index

  end

  post '/checkout' do
    # binding.pry
    session["item"] = params[:item]
    @item = params
    erb :checkout

  end
end