class TipSerializer < ActiveModel::Serializer

  attributes :id , :user_id, :category_id, :title, :description, :code_snippet, :votes , :more_info

  def votes
    object.all_votes
  end

 
end
