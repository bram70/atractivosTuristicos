class AvatarAtractivo < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  belongs_to :atractivo

  validate :image_size_validation
  validates :avatar, :presence => true

  private
  def image_size_validation
    errors[:avatar] << "Imagen debe ser menor que 3 MB" if avatar.size > 3.megabytes
  end
end
