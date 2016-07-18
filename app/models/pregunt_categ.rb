class PreguntCateg < ActiveRecord::Base
  belongs_to :pregunt
  belongs_to :categ
end
