# frozen_string_literal: true

class TipSerializer < ActiveModel::Serializer
  attributes :id,
             :category_id,
             :user_id,
             :by_username,
             :title,
             :description,
             :code_snippet,
             :votes,
             :more_info

  def votes
    object.all_votes
  end

  def by_username
    object.user.username
  end
end
