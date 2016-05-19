class Cant < ActiveRecord::Base
  belongs_to :prov
  has_many :parr
  def to_s
    name
  end
end
