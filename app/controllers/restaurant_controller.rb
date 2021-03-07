class RestaurantsController < ApplicationController
    #user requesting all restaurants
    get '/views' do
        @views = Restaurant.all
        erb :'restaurants/view'
    end
end