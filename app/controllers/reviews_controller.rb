class ReviewsController < ApplicationController

#user requesting all reviews
get '/reviews' do
    @reviews = Review.all
    erb :'reviews/index'
end