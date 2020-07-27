class Category < ApplicationRecord
  has_many :tips
  has_many :votes, through: :tips
end
