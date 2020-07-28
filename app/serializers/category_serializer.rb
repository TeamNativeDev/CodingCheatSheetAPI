# frozen_string_literal: true

class CategorySerializer < ActiveModel::Serializer
  attributes :title, :color, :imageUrl, :id, :votes

  def votes
    object.all_votes
  end
end
