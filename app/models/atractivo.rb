class Atractivo < ActiveRecord::Base
  belongs_to :prov
  belongs_to :cant
  belongs_to :parr

  belongs_to :categ
  belongs_to :tipo
  belongs_to :subtipo

  validates :name, :presence => true
  validates :description, :presence => true
  validates :parr_id, :presence => true
  validates :cant_id, :presence => true
  validates :prov_id, :presence => true

  def self.search(query)
    where("name like ?", "%#{query}")
  end

end
