class User < ApplicationRecord
    has_many :reviews
    has_many :onion_rings, through: :reviews
end
