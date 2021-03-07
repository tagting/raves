class UsersController < ApplicationController

    get '/signup' do
        erb :"users/signup"
    end 

    post '/signup' do 
        user = Users.new(params)
       
        if user.username.blank? || user.email.blank? || user.name.blank? || user.password.blank? || User.find_by_email(params[:email]) || User.find_by_username(params[:username])
            redirect '/signup'
        else 
            user.save
            session[:user_id] = user.id 
            redirect '/reviews'
        end 
    end 


    get '/login' do 
        erb :"users/login"
    end 

    post '/login' do 
        user = User.find_by_username(params[:username])
       
        if user && user.authenticate(params[:password])
            # login user
            session[:user_id] = user.id
            # redirect 
            redirect '/reviews'
        else 
            # flash[]
            flash[:error] = "Invalid login"
            # invalid login
            redirect '/login'
        end 
    end 

    get '/logout' do
        session.clear
        redirect '/login'
    end 

end 

