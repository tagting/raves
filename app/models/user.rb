class Review < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :posts
end