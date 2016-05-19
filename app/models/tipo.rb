class Tipo < ActiveRecord::Base
  belongs_to :categ
  has_many :subtipo
  def to_s
    name
  end
end
