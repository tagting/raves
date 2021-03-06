require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  not_found do
    flash[:error] = "Whoops! Couldn't find that route"
    redirect "/reviews"
  end

end
