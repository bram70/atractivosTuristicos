class Prov < ActiveRecord::Base
  has_many :cants
  def to_s
    name
  end
end
