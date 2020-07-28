class Category < ApplicationRecord
  has_many :tips
  has_many :votes, through: :tips

  def all_votes
    votes.count
  end
end
