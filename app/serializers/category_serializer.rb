class CategorySerializer < ActiveModel::Serializer

  attributes :title, :color, :imageUrl, :id , :votes, :tips

  def votes
    object.all_votes
  end

 
end
