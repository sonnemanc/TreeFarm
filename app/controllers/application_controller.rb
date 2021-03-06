require './config/environment'

class ApplicationController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        set :session_secret, "tree_secret"
    end

    get '/' do
        erb :index
    end

    get '/about_us' do
        erb :about_us
    end


end