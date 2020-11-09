class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :email, :bio
  has_many :posts
  has_many :comments, through: :posts
end
