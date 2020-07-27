class CategorySerializer < ActiveModel::Serializer

  attributes :title, :color, :imageUrl, :id , :votes, :tips

  def votes
    object.all_votes
  end

  def tips  # this need to be improve in performance
    ActiveModel::SerializableResource.new(object.tips, each_serializer: TipSerializer)
  end

 
end
