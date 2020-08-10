class User < ApplicationRecord
  has_secure_password
  has_many :tips
  has_many :votes, through: :tips
  before_validation :lowercase_attr
  

   def lowercase_attr
    self.email = email.downcase.strip
    self.username = username.downcase.strip
  end


end
