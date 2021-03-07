class RestaurantsController < ApplicationController
    #user requesting all restaurants
    get '/all' do
        erb :"restaurants/all"
    end 
end