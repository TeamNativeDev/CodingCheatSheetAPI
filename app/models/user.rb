class User < ApplicationRecord
  has_secure_password
  has_many :tips
  has_many :votes, through: :tips
end
