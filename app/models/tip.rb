# frozen_string_literal: true

class Tip < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :votes

  def all_votes
    # return ids how has already vote this tip
    # votes.map(&:id) for better performance use below
    votes.pluck(:user_id)
  end
end
