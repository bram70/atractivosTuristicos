class Categ < ActiveRecord::Base
  has_many :tipo
  has_many :subtipo, through: :tipo
  def to_s
    name
  end
end
