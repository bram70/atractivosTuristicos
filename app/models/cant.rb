class Cant < ActiveRecord::Base
  belongs_to :prov
  has_many :parrs
  has_one :atractivo

  def to_s
    name
  end
end
