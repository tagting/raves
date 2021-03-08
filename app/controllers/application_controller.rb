require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
    register Sinatra::Flash 
  end

  #general routes
  get "/" do
    erb :welcome
  end

  helpers do
    def current_user
      @current_user ||= User.find_by_id(session[:user_id])  
    end

  # check if a user logged in
    def logged_in?
      !!session[:user_id]
    end 

  end
end
