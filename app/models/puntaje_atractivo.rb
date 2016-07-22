class PuntajeAtractivo < ActiveRecord::Base
  belongs_to :atractivo
  after_initialize :init

  def init
    self.puntos ||= 0.0
  end

  def computeJerarquia
    case puntos
    when 10..25
      1
    when 26..50
      2
    when 51..75
      3
    when 76..100 
      4
    else
      0
    end
  end
end
