class Atractivo < ActiveRecord::Base
  belongs_to :prov
  belongs_to :cant
  belongs_to :parr

  belongs_to :climate
  belongs_to :categ
  belongs_to :tipo
  belongs_to :subtipo
  has_many :avatar_atractivos
  accepts_nested_attributes_for :avatar_atractivos

  validates :name, :presence => true
  validates :description, :presence => true
  validates :parr_id, :presence => true
  validates :cant_id, :presence => true
  validates :prov_id, :presence => true
  validates :categ_id, :presence => true
  validates :tipo_id, :presence => true
  validates :subtipo_id, :presence => true

  after_create :populate_arrays
  attr_accessor :secciones, :percentage

  def populate_arrays
    @secciones = Seccion.getSeccionsByCateg(categ_id)
    @percentage = []
    a = @secciones.size
    pasos = 75/a
    i = 0
    empieza = 25
    until i > a do
      @percentage << (empieza + (pasos*i))
      i = i + 1
    end 
  end

  def self.search(query)
    where("name like ?", "%#{query}")
  end

  def GenerateCodigoAtractivo(jerarquia)
    codigo_atractivo = "" + formatCode(prov_id)+ "-" + formatCode(cant_id) + "-" + formatCode(parr_id) + "-" + formatCode(categ_id) + "-" + formatCode(tipo_id)+ "-" + formatCode(subtipo_id)+ "-" + formatCode(jerarquia) + "-" + formatCode(id)
  end

  def formatCode(entero)
    "%04d" % entero.to_i
  end

  def getNextSeccion()
    populate_arrays
    if step < @secciones.size
      @secciones[step] 
    else
      nil
    end
  end

  def getPercentage()
    populate_arrays
    if step < @percentage.size
      @percentage[step]
    else
      nil
    end
  end

  def preguntasxNameSeccion(seccion)
    Atractivo.preguntas(categ_id, seccion)
  end

  scope :preguntas, -> (cat, seccion){
    if cat.present?
      Pregunt.byCategAndNameSeccion(cat, seccion)
    else
     nil 
    end 
  }
end
