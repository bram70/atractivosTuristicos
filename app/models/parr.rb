class Parr < ActiveRecord::Base
  has_one :atractivo
  belongs_to :cant

  def to_s
    name
  end
end
