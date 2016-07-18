class Subencabezado < ActiveRecord::Base
  scope :getSubencabezado, -> (categ_id, seccion_name, subseccion_name) {
    subencabezado = where(categ_id: categ_id, seccion_name: seccion_name, subseccion_name: subseccion_name).pluck(:subencabezado)
    unless subencabezado.size > 0
      ""
    else
      subencabezado.first
    end
  }
end
