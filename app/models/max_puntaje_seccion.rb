class MaxPuntajeSeccion < ActiveRecord::Base
  scope :getMaxByPregunta, -> (pregunta) {
    resp = Seccion.byPregunta(pregunta).pluck(:name, :categ_id)
    unless resp.size > 0
      nil
    else
      seccion = resp[0][0]
      categ = resp[0][1]
      max = MaxPuntajeSeccion.where(seccion: seccion, categ: categ).pluck(:max) 
      unless max.size > 0 
        nil
      else
        max[0]
      end
    end
  }
end
