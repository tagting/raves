class RestaurantsController < ApplicationController
    #user requesting all restaurants
    get '/listing' do
        @restaurants = Restaurant.all
        erb :"restaurants/listing"
    end 
end