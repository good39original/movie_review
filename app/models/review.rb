class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie_shop
end
