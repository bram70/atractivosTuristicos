class Subtipo < ActiveRecord::Base
  belongs_to :tipo
  def to_s
    name
  end
end
