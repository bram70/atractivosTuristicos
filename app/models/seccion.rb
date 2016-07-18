class Seccion < ActiveRecord::Base
  belongs_to :pregunt
  belongs_to :categ
  has_many :puntaje_seccion

  scope :naturales, -> { joins(:categ).where('categs.name = ?', "Naturales") }
  scope :culturales, -> { joins(:categ).where('categs.name = ?', "Culturales") }

  scope :getSeccionsByCateg, -> (idCateg) { joins(:categ).where('categs.id = ?',idCateg).distinct(:name).order(:name).pluck(:name) }
  scope :byCateg, -> (idCateg) { joins(:categ).where('categs.id = ?',idCateg) }
  scope :byName, -> (name) { where(:name => name) }
  scope :bySubseccion, -> (subseccion) { where(:subseccion => subseccion) }
  scope :byPregunta, -> (pregunta) { where(:pregunt_id => pregunta) }
  scope :getSubseccionByPregunta, -> (pregunta) { where(:pregunt_id => pregunta).pluck(:subseccion).first }
  scope :getPuntaje, -> (pregunta) { 
    puntaje = where(:pregunt_id => pregunta).pluck(:puntaje)
    unless puntaje.size >0
      0
    else
      puntaje.first
    end
  }
end
