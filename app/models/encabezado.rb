class Encabezado < ActiveRecord::Base
  scope :getEncabezado, -> (categ_id, seccion_name) {
    encabezado = where(categ_id: categ_id, seccion_name: seccion_name).pluck(:encabezado)
    unless encabezado.size > 0
      ""
    else
      encabezado.first
    end
  }
end
