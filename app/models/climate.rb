class Climate < ActiveRecord::Base
  has_many :atractivos 

  def to_s
    name
  end
end
