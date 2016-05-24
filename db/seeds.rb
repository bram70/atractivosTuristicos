# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Prov.create(name: "Guayas")
Prov.create(name: "Pichincha")
Prov.create(name: "El Oro")

Cant.create(name: "Guayaquil", prov_id: Prov.find_by(name: "Guayas").id)
Cant.create(name: "Duran", prov_id: Prov.find_by(name: "Guayas").id)
Cant.create(name: "Milagro", prov_id: Prov.find_by(name: "Guayas").id)

Cant.create(name: "Quito", prov_id: Prov.find_by(name: "Pichincha").id)
Cant.create(name: "Mejia", prov_id: Prov.find_by(name: "Pichincha").id)
Cant.create(name: "Puerto Quito", prov_id: Prov.find_by(name: "Pichincha").id)


Parr.create(name: "Ximena", cant_id: Cant.find_by(name: "Guayaquil").id)
Parr.create(name: "Tarqui", cant_id: Cant.find_by(name: "Guayaquil").id)

Parr.create(name: "Inaquito", cant_id: Cant.find_by(name: "Quito").id)
Parr.create(name: "Eloy Alfaro", cant_id: Cant.find_by(name: "Quito").id)

Categ.create(name: "Culturales")
Categ.create(name: "Naturales")
Tipo.create(name: "Historicos", categ_id: Categ.find_by(name: "Culturales").id)
Tipo.create(name: "Rios", categ_id: Categ.find_by(name: "Naturales").id)

Subtipo.create(name: "Riachuelos", tipo_id: Tipo.find_by(name: "Rios").id)
Subtipo.create(name: "Rapidos", tipo_id: Tipo.find_by(name: "Rios").id)
Subtipo.create(name: "Historia 1", tipo_id: Tipo.find_by(name: "Historicos").id)
Subtipo.create(name: "Historia 2", tipo_id: Tipo.find_by(name: "Historicos").id)
