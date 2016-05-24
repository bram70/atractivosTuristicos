class Categ < ActiveRecord::Base
  has_many :tipo
  has_many :subtipo, through: :tipo
  has_one :atractivo

  def to_s
    name
  end
end
