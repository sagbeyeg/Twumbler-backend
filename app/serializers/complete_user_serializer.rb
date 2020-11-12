class CompleteUserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :age, :email, :bio, :user_profile_photo
  has_many :posts
  has_many :comments, through: :posts
    
    def user_profile_photo
      rails_blob_path(object.profile_photo, only_path: true) if object.profile_photo.attached?
    end

end
