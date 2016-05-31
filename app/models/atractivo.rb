class Atractivo < ActiveRecord::Base
  belongs_to :prov
  belongs_to :cant
  belongs_to :parr

  belongs_to :categ
  belongs_to :tipo
  belongs_to :subtipo

  validate :image_size_validation
  validates :name, :presence => true
  validates :description, :presence => true
  validates :parr_id, :presence => true
  validates :cant_id, :presence => true
  validates :prov_id, :presence => true
  validates :avatar, :presence => true

  # Add the upload image for an atractivo T
  mount_uploader :avatar, AvatarUploader

  def self.search(query)
    where("name like ?", "%#{query}")
  end

  private
    def image_size_validation
      errors[:avatar] << "Should be less than 500 KB" if avatar.size > 0.5.megabytes
    end
end
