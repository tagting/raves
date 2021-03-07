class ReviewsController < ApplicationController

    #user requesting all reviews
    get '/reviews' do
        @reviews = Review.all
        erb :'reviews/index'
    end

    #user request to view form to add a new review
    get '/reviews/new' do
        erb :'reviews/new'
    end

    #user; show route 
    get '/reviews/:id' do
        get_review
        erb :'reviews/show'
    end

    #user submits a new review
    post '/reviews' do
        @review = Review.new(params)
        @review.user_id = session[user_id]
        @review.save
        redirect "/reviews/#{review_id}"
    end

    #user request to see the edit form for a review
    get '/reviews/:id/edit' do
        get_review
        redirect_if_not_authorized
        erb :"/reviews/edit"
    end

    #user submitted the edit form
    patch '/reviews/:id' do
        get_review
        redirect_if_not_authorized
        @review.update(title: params[:title], content: params[:content]) 
        redirect "/reviews/#{@review.id}"
    end

    #user wants to delete a review
    delete '/reviews/:id' do
        get_review
        @post.destroy
        redirect '/reviews'
    end

# private
#     def get_review
#         @review = Review.find_by(id:params[:id])
#     end

#     def redirect_if_not_authorized
#          if @review.user != current_user
#             flash[:error] = "You do not have authorization"
#             redirect '/reviews'
#         end
#      end
end