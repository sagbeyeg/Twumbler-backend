class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, through: :posts

  has_one_attached :profile_photo, dependent: :destroy
  validate :default_profile_photo, :on => :create

  private

  def default_profile_photo
      self.profile_photo.attach(
          io: File.open('app/assets/images/default_profile_photo.png'),
          filename: 'default_profile_photo.png') unless self.profile_photo.attached?
  end

end