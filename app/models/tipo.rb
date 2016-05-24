class Tipo < ActiveRecord::Base
  belongs_to :categ
  has_many :subtipo
  has_one :atractivo

  def to_s
    name
  end
end
