class Subtipo < ActiveRecord::Base
  belongs_to :tipo
  has_one :atractivo

  def to_s
    name
  end
end
