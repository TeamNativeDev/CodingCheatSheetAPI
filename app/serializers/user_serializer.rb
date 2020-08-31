class UserSerializer < ActiveModel::Serializer
    attributes :email, :username, :bio

    has_many :tips, serializer: TipSerializer
  
   
  end
  