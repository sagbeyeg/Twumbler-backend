class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, through: :posts

  # def find_user_email
  #   User.all.find{ |user| user.email == email}.id
  # end
end
