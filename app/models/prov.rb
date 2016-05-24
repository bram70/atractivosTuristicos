class Prov < ActiveRecord::Base
  has_many :cants
  has_one :atractivo

  def to_s
    name
  end
end
