require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, rand.to_s
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        session[params.keys.first] = params.values.first
        @session = session

        erb :show
    end
end