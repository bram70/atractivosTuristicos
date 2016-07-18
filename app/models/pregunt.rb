class Pregunt < ActiveRecord::Base
  has_many :respuests
  has_many :seccions
  accepts_nested_attributes_for  :respuests,
                                  reject_if: proc { |attributes| attributes['rpta'].blank? },
                                  allow_destroy: true
  validates :texto, presence: true

  scope :byCategoria, -> (categoria){ Pregunt.find(Seccion.byCateg(categoria).pluck(:pregunt_id)) }

  scope :getPuntaje, -> (pregunta) { Pregunt.find(Seccion.getPuntaje.pluck(:pregunt_id)) }

  scope :byCategAndNameSeccion, -> (categ,seccion) { Pregunt.find(Seccion.byCateg(categ).byName(seccion).pluck(:pregunt_id))}
end
