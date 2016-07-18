class PuntajeSeccion < ActiveRecord::Base
  belongs_to :seccion


  scope :getPuntaje, -> (pregunta) {
    puntaje = joins(:seccion).merge(Seccion.byPregunta(pregunta)).pluck(:puntaje)
    unless puntaje.size >0
      0
    else
      puntaje.first
    end
  }
end
