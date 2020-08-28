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

  def update_votes(current_user)
    @vote = votes.find_by(user_id: current_user.id)
    if @vote
      @vote.destroy
    else
      votes.create!(user_id: current_user.id)
    end
  end
end
