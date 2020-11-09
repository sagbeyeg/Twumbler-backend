class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :email, :bio
end
