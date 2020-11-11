class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :email, :bio 
  # :user_email
  has_many :posts
  has_many :comments, through: :posts

  # def user_email
  #   object.find_user_email
  # end
end
