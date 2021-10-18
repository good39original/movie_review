class MovieShop < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
