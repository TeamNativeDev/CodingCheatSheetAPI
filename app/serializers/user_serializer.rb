class UserSerializer < ActiveModel::Serializer
    attributes :email, :username, :bio, :id

    has_many :tips, serializer: TipSerializer
  
   
  end
