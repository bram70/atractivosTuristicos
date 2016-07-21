provincia1 = Prov.create(name: "Guayas")
provincia2 = Prov.create(name: "Pichincha")
provincia3 = Prov.create(name: "El Oro")

canton1 = Cant.create(name: "Guayaquil", prov_id: provincia1.id)
canton2 = Cant.create(name: "Duran", prov_id: provincia1.id)
canton3 = Cant.create(name: "Milagro", prov_id: provincia1.id)

canton4 = Cant.create(name: "Quito", prov_id: provincia2.id)
canton5 = Cant.create(name: "Mejia", prov_id: provincia2.id)
canton6 = Cant.create(name: "Puerto Quito", prov_id: provincia2.id)

########### Climate
clima1 = Climate.create(name: "ARIDO SIN EXCESO DE AGUA, MEGATERMICO O CALIDO", temperature: "18-26", precipitation: "0- 250")
clima2 = Climate.create(name: "ARIDO SIN EXCESO DE AGUA, MESOTERMICO TEMPLADO CALIDO", temperature: "10-22", precipitation: "500-750")
clima3 = Climate.create(name: "HUMEDO CON MODERADO DEFICIT DE AGUA DURANTE LA TEMPORADA SECA, MEGATERMICO O CALIDO", temperature: "24-26", precipitation: "1500-1750")
clima4 = Climate.create(name: "HUMEDO CON MODERADO DEFICIT DE AGUA EN LA TEMPORADA SECA, MEGATERMICO O CALIDO", temperature: "22-26", precipitation: "1750-2000")
clima5 = Climate.create(name: "HUMEDO CON MODERADO DEFICIT DE AGUA EN LA TEMPORADA SECA, MESOTERMICO SEMICALIDO", temperature: "18-26",precipitation:  "1000-1500")
clima6 = Climate.create(name: "HUMEDO CON MODERADO DEFICIT DE AGUA EN LAEPOCA SECA, MEGATERMICO O CALIDO", temperature: "24-26", precipitation: "1250-1750")
clima7 = Climate.create(name: "HUMEDO CON PEQUEÑO DEFICIT DE AGUA, MEGATERMICO O CALIDO", temperature: "24-26", precipitation: "750-1500")
clima8 = Climate.create(name: "HUMEDO CON PEQUEÑO DEFICIT DE AGUA, MESOTERMICO SEMICALIDO", temperature: "18-22", precipitation: "2000-2500")
clima9 = Climate.create(name: "HUMEDO CON PEQUEÑO DEFICIT DE AGUA, MESOTERMICO SEMIFRIO", temperature: "4-8",precipitation: "1000-1250")
clima10 = Climate.create(name: "HUMEDO CON PEQUEÑO DEFICIT DE AGUA, MESOTERMICO TEMPLADO CALIDO", temperature:  "16-24",precipitation: "1500-3500")
clima11 = Climate.create(name: "HUMEDO CON PEQUEÑO DEFICIT DE AGUA, MESOTERMICO TEMPLADO FRIO", temperature: "6-16", precipitation: "1250-1500")
clima12 = Climate.create(name: "HUMEDO CON PEQUEÑO DEFICIT DE AGUA, MESOTERMICO TEMPLADO FRIO", temperature:  "6-8", precipitation: "1750-2000")
clima13 = Climate.create(name: "HUMEDO SIN DEFICIT DE AGUA, MEGATERMICO O CALIDO", temperature: "16-26", precipitation: "250 - 750")
clima14 = Climate.create(name: "HUMEDO SIN DEFICIT DE AGUA, MESOTERMICO SEMIFRIO", temperature: "8-10", precipitation: "1250-1500")
clima15 = Climate.create(name: "LIGERAMENTE HUMEDO CON GRAN DEFICIT DE AGUA, MESOTERMICO TEMPLADO FRIO", temperature: "12-14",precipitation: "500-750")
clima16 = Climate.create(name: "SECO CON GRAN DEFICIENCIA EN LAEPOCA SECA, MEGATERMICO O CALIDO", temperature:  "22-24",precipitation: "500-750")
clima17 = Climate.create(name: "SECO CON PEQUEÑO EXCESO DE AGUA,  MESOTERMICO TEMPLADO FRIO", temperature: "8-14",precipitation: "0-250")
clima18 = Climate.create(name: "SECO SIN EXCESO DE AGUA, MESOTERMICO TEMPLADO CALIDO", temperature: "12-18",precipitation: "0-500")
clima19 = Climate.create(name: "SECO SIN EXCESO DE AGUA, MEGATERMICO O CALIDO", temperature: "24-26",precipitation: "0-250")
clima20 = Climate.create(name: "SECO SIN EXCESO DE AGUA, MESOTERMICO SEMIFRIO", temperature: "10-12",precipitation: "750-1000")
clima21 = Climate.create(name: "SECO SIN EXCESO DE AGUA, MESOTERMICO TEMPLADO FRIO", temperature: "8-10", precipitation: "250-500")
clima22 = Climate.create(name: "SUBHUMEDO CON GRAN DEFICIENCIA EN LAEPOCA SECA, MEGATERMICO O CALIDO", temperature: "26-28",precipitation: "500-750")
clima23 = Climate.create(name: "SUBHUMEDO CON GRAN DEFICIT DE AGUA ENEPOCA SECA, MESOTERMICO TEMPLADO CALIDO", temperature: "18-20",precipitation: "1250-1500")
clima24 = Climate.create(name: "SUBHUMEDO CON GRAN DEFICIT DE AGUA ENEPOCA SECA, MESOTERMICO TEMPLADO FRIO", temperature: "14-16",precipitation: "1000-1250")
clima25 = Climate.create(name: "SUBHUMEDO CON MODERADO EXCESO DE AGUA EN LAEPOCA LLUVIOSA, MESOTERMICO TEMPLADO FRIO", temperature: "12-14",precipitation: "1250-1500")
clima26 = Climate.create(name: "SUBHUMEDO CON MODERADO EXCESO DE AGUA ENEPOCA LLUVIOSA, MEGATERMICO O CALIDO", temperature: "24-26",precipitation: "750-1000")
clima27 = Climate.create(name: "SUPERHUMEDO CON PEQUEÑO DEFICIT DE AGUA, MESOTERMICO TEMPLADO CALIDO", temperature: "20-22",precipitation: "2000-2500")
clima28 = Climate.create(name: "SUPERHUMEDO SIN DEFICIT DE AGUA, MEGATERMICO O CALIDO", temperature: "24-26",precipitation: "250-750")
clima29 = Climate.create(name: "SUPERHUMEDO SIN DEFICIT DE AGUA, MESOTERMICO SEMICALIDO", temperature: "20-22",precipitation: "2000-2500")
clima30 = Climate.create(name: "SUPERHUMEDO SIN DEFICIT DE AGUA, MESOTERMICO TEMPLADO CALIDO", temperature: "18-20",precipitation: "4500-5000")
clima31 = Climate.create(name: "SUBHUMEDO CON PEQUEÑO DEFICIT DE AGUA, MESOTERMICO TEMPLADO FRIO", temperature: "10-18",precipitation: "0-250")
clima32 = Climate.create(name: "SUBHUMEDO CON MODERADO DEFICIT DE AGUA ENEPOCA SECA, MEGATERMICO O CALIDO", temperature: "16-18",precipitation: "0-250")
clima33 = Climate.create(name: "SUBHUMEDO SIN EXCESO DE AGUA, MESOTERMICO TEMPLADO FRIO", temperature: "14-16",precipitation: "0-250")
clima34 = Climate.create(name: "SUBHUMEDO CON PEQUEÑO DEFICIT DE AGUA, MESOTERMICO TEMPLADO FRIO", temperature: "14-16",precipitation: "0-250")
#############
Parr.create(name: "Ximena", cant_id: canton1.id)
Parr.create(name: "Tarqui", cant_id: canton1.id)

Parr.create(name: "Inaquito", cant_id: canton4.id)
Parr.create(name: "Eloy Alfaro", cant_id: canton4.id)

categoria1 = Categ.create(name: "Manifestaciones Culturales Tangibles")
categoria2 = Categ.create(name: "Manifestaciones Culturales Intangibles")
categoria3 = Categ.create(name: "Sitios Naturales")
#### CULTURALES TANGIBLES
tipoCT1 = Tipo.create(name: "Históricas", categ_id: categoria1.id)
tipoCT2 = Tipo.create(name: "Etnografía", categ_id: categoria1.id)
tipoCT3 = Tipo.create(name: "Realizaciones Técnicas y Científicas", categ_id: categoria1.id)
tipoCT4 = Tipo.create(name: "Realizaciones Artísticas Contemporáneas", categ_id: categoria1.id)
tipoCT5 = Tipo.create(name: "Acontecimientos Programados", categ_id: categoria1.id)
#### CULTURALES INTANGIBLES
tipoCI1 = Tipo.create(name: "Etnografía", categ_id: categoria2.id)
tipoCI2 = Tipo.create(name: "Acontecimientos Programados", categ_id: categoria2.id)
#### NATURALES
tipoN1 = Tipo.create(name: "Montañas", categ_id: categoria3.id)
tipoN2 = Tipo.create(name: "Planicies", categ_id: categoria3.id)
tipoN3 = Tipo.create(name: "Desiertos", categ_id: categoria3.id)
tipoN4 = Tipo.create(name: "Ambientes lacustres", categ_id: categoria3.id)
tipoN5 = Tipo.create(name: "Ríos", categ_id: categoria3.id)
tipoN6 = Tipo.create(name: "Bosques", categ_id: categoria3.id)
tipoN7 = Tipo.create(name: "Aguas subterráneas", categ_id: categoria3.id)
tipoN8 = Tipo.create(name: "Fenómenos espeleológicos", categ_id: categoria3.id)
tipoN9 = Tipo.create(name: "Fenómenos geológicos", categ_id: categoria3.id)
tipoN10 = Tipo.create(name: "Costas o Litorales", categ_id: categoria3.id)
tipoN11 = Tipo.create(name: "Ambientes Marinos", categ_id: categoria3.id)
tipoN12 = Tipo.create(name: "Tierras insulares", categ_id: categoria3.id)

# SUBTIPO CULTURALES TANGIBLES
Subtipo.create(name: "Arquitecturas (CIVIL, RELIGIOSA, MILITAR)", tipo_id: tipoCT1.id)
Subtipo.create(name: "Area Histórica", tipo_id: tipoCT1.id)
Subtipo.create(name: "Ciudad Histórica", tipo_id: tipoCT1.id)
Subtipo.create(name: "Mina Antigua", tipo_id: tipoCT1.id)
Subtipo.create(name: "Area Arqueológica", tipo_id: tipoCT1.id)

Subtipo.create(name: "Grupos étnicos", tipo_id: tipoCT2.id)
Subtipo.create(name: "Arquitectura vernácula", tipo_id: tipoCT2.id)
Subtipo.create(name: "Manifestaciones religiosas, tradiciones y creencias populares", tipo_id: tipoCT2.id)
Subtipo.create(name: "Música y Danza", tipo_id: tipoCT2.id)
Subtipo.create(name: "Artesanía", tipo_id: tipoCT2.id)
Subtipo.create(name: "Ferias y Mercados tradicionales", tipo_id: tipoCT2.id)
Subtipo.create(name: "Comida y bebida típica", tipo_id: tipoCT2.id)
Subtipo.create(name: "Shamanismo", tipo_id: tipoCT2.id)

Subtipo.create(name: "Obras técnicas", tipo_id: tipoCT3.id)
Subtipo.create(name: "Centros científicos y técnicos", tipo_id: tipoCT3.id)
Subtipo.create(name: "Zoológicos y exhibiciones de flora y fauna", tipo_id: tipoCT3.id)
Subtipo.create(name: "Jardines botánicos", tipo_id: tipoCT3.id)
Subtipo.create(name: "Centros Documentales y bibliotecas", tipo_id: tipoCT3.id)

Subtipo.create(name: "Museos", tipo_id: tipoCT4.id)
Subtipo.create(name: "Obras de arte", tipo_id: tipoCT4.id)
Subtipo.create(name: "Pintura", tipo_id: tipoCT4.id)
Subtipo.create(name: "Escultura", tipo_id: tipoCT4.id)
Subtipo.create(name: "Galería", tipo_id: tipoCT4.id)

Subtipo.create(name: "Artísticos", tipo_id: tipoCT5.id)
Subtipo.create(name: "Fiestas turísticas populares", tipo_id: tipoCT5.id)
Subtipo.create(name: "Feria y Congresos", tipo_id: tipoCT5.id)
Subtipo.create(name: "Eventos deportivos y/o competencia", tipo_id: tipoCT5.id)
Subtipo.create(name: "Eventos Gastronómicos", tipo_id: tipoCT5.id)

# SUBTIPO CULTURALES INTANGIBLES
Subtipo.create(name: "Grupos étnicos", tipo_id: tipoCI1.id)
Subtipo.create(name: "Manifestaciones religiosas, tradiciones y creencias populares", tipo_id: tipoCI1.id)
Subtipo.create(name: "Música y danza", tipo_id: tipoCI1.id)
Subtipo.create(name: "Shamanismo", tipo_id: tipoCI1.id)

Subtipo.create(name: "Artísticos", tipo_id: tipoCI2.id)
Subtipo.create(name: "Fiestas turísticas populares", tipo_id: tipoCI2.id)
Subtipo.create(name: "Feria y congresos", tipo_id: tipoCI2.id)
Subtipo.create(name: "Eventos deportivos y/o competencia", tipo_id: tipoCI2.id)
Subtipo.create(name: "Eventos Gastronómicos", tipo_id: tipoCI2.id)

# SUBTIPO NATURALES 
Subtipo.create(name: "Alta montaña", tipo_id: tipoN1.id)
Subtipo.create(name: "Cerro", tipo_id: tipoN1.id)
Subtipo.create(name: "Volcán", tipo_id: tipoN1.id)
Subtipo.create(name: "Colina", tipo_id: tipoN1.id)
Subtipo.create(name: "Nudo", tipo_id: tipoN1.id)

Subtipo.create(name: "Llanura", tipo_id: tipoN2.id)
Subtipo.create(name: "Salitre", tipo_id: tipoN2.id)
Subtipo.create(name: "Valle", tipo_id: tipoN2.id)
Subtipo.create(name: "Meseta", tipo_id: tipoN2.id)

Subtipo.create(name: "Costero", tipo_id: tipoN3.id)
Subtipo.create(name: "Del interior", tipo_id: tipoN3.id)

Subtipo.create(name: "Lago", tipo_id: tipoN4.id)
Subtipo.create(name: "Laguna", tipo_id: tipoN4.id)
Subtipo.create(name: "Pantano", tipo_id: tipoN4.id)
Subtipo.create(name: "Poza", tipo_id: tipoN4.id)
Subtipo.create(name: "Humedal", tipo_id: tipoN4.id)

Subtipo.create(name: "Riachuelo", tipo_id: tipoN5.id)
Subtipo.create(name: "Rápido", tipo_id: tipoN5.id)
Subtipo.create(name: "Cascada", tipo_id: tipoN5.id)
Subtipo.create(name: "Ribera", tipo_id: tipoN5.id)
Subtipo.create(name: "Delta", tipo_id: tipoN5.id)

Subtipo.create(name: "Páramo", tipo_id: tipoN6.id)
Subtipo.create(name: "Ceja de Selva", tipo_id: tipoN6.id)
Subtipo.create(name: "Nublado", tipo_id: tipoN6.id)
Subtipo.create(name: "Montano bajo", tipo_id: tipoN6.id)
Subtipo.create(name: "Húmedo", tipo_id: tipoN6.id)
Subtipo.create(name: "Manglar", tipo_id: tipoN6.id)
Subtipo.create(name: "Seco", tipo_id: tipoN6.id)
Subtipo.create(name: "Petrificado", tipo_id: tipoN6.id)

Subtipo.create(name: "Manantial de agua mineral", tipo_id: tipoN7.id)
Subtipo.create(name: "Manantial de agua termal", tipo_id: tipoN7.id)

Subtipo.create(name: "Cueva o caverna", tipo_id: tipoN8.id)
Subtipo.create(name: "Río subterráneo", tipo_id: tipoN8.id)

Subtipo.create(name: "Flujo de lava", tipo_id: tipoN9.id)
Subtipo.create(name: "Tubo de lava", tipo_id: tipoN9.id)
Subtipo.create(name: "Géiser", tipo_id: tipoN9.id)
Subtipo.create(name: "Escarpa de falla", tipo_id: tipoN9.id)
Subtipo.create(name: "Solfatara", tipo_id: tipoN9.id)
Subtipo.create(name: "Cañon", tipo_id: tipoN9.id)

Subtipo.create(name: "Playa", tipo_id: tipoN10.id)
Subtipo.create(name: "Acantilado", tipo_id: tipoN10.id)
Subtipo.create(name: "Golfo", tipo_id: tipoN10.id)
Subtipo.create(name: "Bahía", tipo_id: tipoN10.id)
Subtipo.create(name: "Ensenada", tipo_id: tipoN10.id)
Subtipo.create(name: "Canal", tipo_id: tipoN10.id)
Subtipo.create(name: "Estuario", tipo_id: tipoN10.id)
Subtipo.create(name: "Estero", tipo_id: tipoN10.id)

Subtipo.create(name: "Arrecife de coral", tipo_id: tipoN11.id)
Subtipo.create(name: "Cueva", tipo_id: tipoN11.id)
Subtipo.create(name: "Cráter", tipo_id: tipoN11.id)

Subtipo.create(name: "Isla continental", tipo_id: tipoN12.id)
Subtipo.create(name: "Islote", tipo_id: tipoN12.id)
Subtipo.create(name: "Roca", tipo_id: tipoN12.id)

### PREGUNTAS
pregunta1 = Pregunt.create(texto: "Tipo de ingreso Libre", tipo: "check_box", orden: 1)
pregunta2 = Pregunt.create(texto: "Tipo de ingreso Restringido", tipo: "check_box", orden: 2)
pregunta3 = Pregunt.create(texto: "Tipo de ingreso Pagado", tipo: "check_box", orden: 3)

pregunta4 = Pregunt.create(texto: "Atencion todos los dias", tipo: "check_box", orden: 1)
pregunta5 = Pregunt.create(texto: "Atencion solo dias habiles", tipo: "check_box", orden: 2)
pregunta6 = Pregunt.create(texto: "Atencion fines de semana y feriados", tipo: "check_box", orden: 3)
pregunta7 = Pregunt.create(texto: "Otro", tipo: "check_box", orden: 4, text_adicional: true)

pregunta8 = Pregunt.create(texto: "Existen facilidades de acceso en el sitio para personas con discapacidad", tipo: "check_box", orden: 1)

pregunta9 = Pregunt.create(texto: "Existe conectividad terrestre hacia el atractivo turistico", tipo: "check_box", orden: 1)
pregunta10 = Pregunt.create(texto: "Existe conectividad acuatica (maritima/fluvial) hacia el atractivo turistico", tipo: "check_box", orden: 2)
pregunta11 = Pregunt.create(texto: "Existe conectividad aerea hacia el atractivo turistico", tipo: "check_box", orden: 3)
pregunta12 = Pregunt.create(texto: "Otra forma de conectividad", tipo: "check_box", orden: 4, text_adicional: true)

seccion1 = Seccion.create(name: "A", subseccion: "SECCION_1", pregunt_id: pregunta1.id, categ_id: categoria1.id, puntaje: 3)
seccionC1 = Seccion.create(name: "A", subseccion: "SECCION_1", pregunt_id: pregunta1.id, categ_id: categoria2.id, puntaje: 8)
seccionN1 = Seccion.create(name: "A", subseccion: "SECCION_1", pregunt_id: pregunta1.id, categ_id: categoria3.id, puntaje: 3)

seccion2 = Seccion.create(name: "A", subseccion: "SECCION_1", pregunt_id: pregunta2.id, categ_id: categoria1.id, puntaje: 2)
seccionC2 = Seccion.create(name: "A", subseccion: "SECCION_1", pregunt_id: pregunta2.id, categ_id: categoria2.id, puntaje: 7)
seccionN2 = Seccion.create(name: "A", subseccion: "SECCION_1", pregunt_id: pregunta2.id, categ_id: categoria3.id, puntaje: 2)

seccion3 = Seccion.create(name: "A", subseccion: "SECCION_1", pregunt_id: pregunta3.id, categ_id: categoria1.id, puntaje: 2)
seccionC3 = Seccion.create(name: "A", subseccion: "SECCION_1", pregunt_id: pregunta3.id, categ_id: categoria2.id, puntaje: 7)
seccionC3 = Seccion.create(name: "A", subseccion: "SECCION_1", pregunt_id: pregunta3.id, categ_id: categoria3.id, puntaje: 2)

encabezado1 = Encabezado.create(categ_id: seccion1.categ_id, seccion_name: seccion1.name, encabezado: "ACCESIBILIDAD AL ATRACTIVO TURÍSTICO")
subencabezado1 = Subencabezado.create(categ_id: seccion1.categ_id, seccion_name: seccion1.name, subseccion_name: seccion1.subseccion, subencabezado: "Tipo de ingreso")
encabezadoC1 = Encabezado.create(categ_id: seccionC1.categ_id, seccion_name: seccionC1.name, encabezado: "ACCESIBILIDAD AL ATRACTIVO TURÍSTICO")
subencabezadoC1 = Subencabezado.create(categ_id: seccionC1.categ_id, seccion_name: seccionC1.name, subseccion_name: seccionC1.subseccion, subencabezado: "Tipo de ingreso")

encabezadoN1 = Encabezado.create(categ_id: seccionN1.categ_id, seccion_name: seccionN1.name, encabezado: "ACCESIBILIDAD AL ATRACTIVO TURÍSTICO")
subencabezadoN1 = Subencabezado.create(categ_id: seccionN1.categ_id, seccion_name: seccionN1.name, subseccion_name: seccionN1.subseccion, subencabezado: "Tipo de ingreso")

seccion4 = Seccion.create(name: "A", subseccion: "SECCION_2", pregunt_id: pregunta4.id, categ_id: categoria1.id, puntaje: 3)
seccionN4 = Seccion.create(name: "A", subseccion: "SECCION_2", pregunt_id: pregunta4.id, categ_id: categoria3.id, puntaje: 3)

seccion5 = Seccion.create(name: "A", subseccion: "SECCION_2", pregunt_id: pregunta5.id, categ_id: categoria1.id, puntaje: 2)
seccionN5 = Seccion.create(name: "A", subseccion: "SECCION_2", pregunt_id: pregunta5.id, categ_id: categoria3.id, puntaje: 2)
seccion6 = Seccion.create(name: "A", subseccion: "SECCION_2", pregunt_id: pregunta6.id, categ_id: categoria1.id, puntaje: 2)
seccionN6 = Seccion.create(name: "A", subseccion: "SECCION_2", pregunt_id: pregunta6.id, categ_id: categoria3.id, puntaje: 2)
seccion7 = Seccion.create(name: "A", subseccion: "SECCION_2", pregunt_id: pregunta7.id, categ_id: categoria1.id, puntaje: 2)
seccionN7 = Seccion.create(name: "A", subseccion: "SECCION_2", pregunt_id: pregunta7.id, categ_id: categoria3.id, puntaje: 2)

subencabezado2 = Subencabezado.create(categ_id: seccion4.categ_id, seccion_name: seccion4.name, subseccion_name: seccion4.subseccion, subencabezado: "Atención")
subencabezadoN2 = Subencabezado.create(categ_id: seccionN4.categ_id, seccion_name: seccionN4.name, subseccion_name: seccionN4.subseccion, subencabezado: "Atención")

seccion8 = Seccion.create(name: "A", subseccion: "SECCION_3", pregunt_id: pregunta8.id, categ_id: categoria1.id, puntaje: 2)
seccionN8 = Seccion.create(name: "A", subseccion: "SECCION_3", pregunt_id: pregunta8.id, categ_id: categoria3.id, puntaje: 2)
subencabezado3 = Subencabezado.create(categ_id: seccion8.categ_id, seccion_name: seccion8.name, subseccion_name: seccion8.subseccion, subencabezado: "Facilidades para personas con discapacidad")
subencabezadoN3 = Subencabezado.create(categ_id: seccionN8.categ_id, seccion_name: seccionN8.name, subseccion_name: seccionN8.subseccion, subencabezado: "Facilidades para personas con discapacidad")

seccion9 = Seccion.create(name: "A", subseccion: "SECCION_4", pregunt_id: pregunta9.id, categ_id: categoria1.id, puntaje: 2)
seccionC9 = Seccion.create(name: "A", subseccion: "SECCION_4", pregunt_id: pregunta9.id, categ_id: categoria2.id, puntaje: 2)
seccionN9 = Seccion.create(name: "A", subseccion: "SECCION_4", pregunt_id: pregunta9.id, categ_id: categoria3.id, puntaje: 2)

seccion10 = Seccion.create(name: "A", subseccion: "SECCION_4", pregunt_id: pregunta10.id, categ_id: categoria1.id, puntaje: 2)
seccionC10 = Seccion.create(name: "A", subseccion: "SECCION_4", pregunt_id: pregunta10.id, categ_id: categoria2.id, puntaje: 2)
seccionN10 = Seccion.create(name: "A", subseccion: "SECCION_4", pregunt_id: pregunta10.id, categ_id: categoria3.id, puntaje: 2)

seccion11 = Seccion.create(name: "A", subseccion: "SECCION_4", pregunt_id: pregunta11.id, categ_id: categoria1.id, puntaje: 2)
seccionC11 = Seccion.create(name: "A", subseccion: "SECCION_4", pregunt_id: pregunta11.id, categ_id: categoria2.id, puntaje: 2)
seccionN11 = Seccion.create(name: "A", subseccion: "SECCION_4", pregunt_id: pregunta11.id, categ_id: categoria3.id, puntaje: 2)

seccion12 = Seccion.create(name: "A", subseccion: "SECCION_4", pregunt_id: pregunta12.id, categ_id: categoria1.id, puntaje: 2)
seccionC12 = Seccion.create(name: "A", subseccion: "SECCION_4", pregunt_id: pregunta12.id, categ_id: categoria2.id, puntaje: 2)
seccionN12 = Seccion.create(name: "A", subseccion: "SECCION_4", pregunt_id: pregunta12.id, categ_id: categoria3.id, puntaje: 2)

subencabezado4 = Subencabezado.create(categ_id: seccion9.categ_id, seccion_name: seccion9.name, subseccion_name: seccion9.subseccion, subencabezado: "Conectividad")
subencabezadoC4 = Subencabezado.create(categ_id: seccionC9.categ_id, seccion_name: seccionC9.name, subseccion_name: seccionC9.subseccion, subencabezado: "Conectividad")
subencabezadoN4 = Subencabezado.create(categ_id: seccionN9.categ_id, seccion_name: seccionN9.name, subseccion_name: seccionN9.subseccion, subencabezado: "Conectividad")

MaxPuntajeSeccion.create(max: 10, seccion: seccion1.name, categ: categoria1.id)
MaxPuntajeSeccion.create(max: 10, seccion: seccionC1.name, categ: categoria2.id)
MaxPuntajeSeccion.create(max: 10, seccion: seccionN1.name, categ: categoria3.id)
##############################################################################################################
pregunta13 = Pregunt.create(texto: "Existe algún tipo de servicio de alojamiento", tipo: "check_box", orden: 1)
pregunta14 = Pregunt.create(texto: "Existe algún tipo de servicio de alimentos y bebidas", tipo: "check_box", orden: 2)
pregunta15 = Pregunt.create(texto: "Existe algún tipo de servicio de operación (agencia de viajes)", tipo: "check_box", orden: 3)
pregunta16 = Pregunt.create(texto: "Existe algún servicio de transporte o movilización interno en el atractivo", tipo: "check_box", orden: 4)
pregunta17 = Pregunt.create(texto: "Existe servicio de guianza en el atractivo", tipo: "check_box", orden: 5)
pregunta18 = Pregunt.create(texto: "Existen facilidades turísticas implementadas", tipo: "check_box", orden: 6)
pregunta19 = Pregunt.create(texto: "Existe algún otro servicio turístico que complemente la actividad turística", tipo: "check_box", orden: 7, text_adicional: true)

pregunta20 = Pregunt.create(texto: "Existe algún tipo de servicio de seguridad pública y/o privada", tipo: "check_box", orden: 1)

pregunta21 = Pregunt.create(texto: "Existe algún tipo de señalización de aproximación al sitio turístico", tipo: "check_box", orden: 1)
pregunta22 = Pregunt.create(texto: "Existe algún tipo de señalética en el sitio", tipo: "check_box", orden: 2)
pregunta23 = Pregunt.create(texto: "Existe algún tipo de servicio de salud o primeros auxilios", tipo: "check_box", orden: 1)

seccion13 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta13.id, categ_id: categoria1.id, puntaje: 1)
seccionC13 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta13.id, categ_id: categoria2.id, puntaje: 1)
seccionN13 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta13.id, categ_id: categoria3.id, puntaje: 1)

seccion14 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta14.id, categ_id: categoria1.id, puntaje: 1)
seccionC14 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta14.id, categ_id: categoria2.id, puntaje: 1)
seccionN14 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta14.id, categ_id: categoria3.id, puntaje: 1)

seccion15 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta15.id, categ_id: categoria1.id, puntaje: 1)
seccionC15 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta15.id, categ_id: categoria2.id, puntaje: 1)
seccionN15 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta15.id, categ_id: categoria3.id, puntaje: 1)

seccion16 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta16.id, categ_id: categoria1.id, puntaje: 1)
seccionC16 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta16.id, categ_id: categoria2.id, puntaje: 1)
seccionN16 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta16.id, categ_id: categoria3.id, puntaje: 1)

seccion17 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta17.id, categ_id: categoria1.id, puntaje: 1)
seccion17 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta17.id, categ_id: categoria2.id, puntaje: 1)
seccion17 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta17.id, categ_id: categoria3.id, puntaje: 1)

seccion18 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta18.id, categ_id: categoria1.id, puntaje: 1)
seccion18 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta18.id, categ_id: categoria2.id, puntaje: 1)
seccion18 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta18.id, categ_id: categoria3.id, puntaje: 1)

seccion19 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta19.id, categ_id: categoria1.id, puntaje: 1)
seccionC19 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta19.id, categ_id: categoria2.id, puntaje: 1)
seccionN19 = Seccion.create(name: "B", subseccion: "SECCION_1", pregunt_id: pregunta19.id, categ_id: categoria3.id, puntaje: 1)

seccion20 = Seccion.create(name: "B", subseccion: "SECCION_2", pregunt_id: pregunta20.id, categ_id: categoria1.id, puntaje: 1)
seccionC20 = Seccion.create(name: "B", subseccion: "SECCION_2", pregunt_id: pregunta20.id, categ_id: categoria2.id, puntaje: 1)
seccionN20 = Seccion.create(name: "B", subseccion: "SECCION_2", pregunt_id: pregunta20.id, categ_id: categoria3.id, puntaje: 1)

seccion21 = Seccion.create(name: "B", subseccion: "SECCION_3", pregunt_id: pregunta21.id, categ_id: categoria1.id, puntaje: 1)
seccionC21 = Seccion.create(name: "B", subseccion: "SECCION_3", pregunt_id: pregunta21.id, categ_id: categoria2.id, puntaje: 1)
seccionN21 = Seccion.create(name: "B", subseccion: "SECCION_3", pregunt_id: pregunta21.id, categ_id: categoria3.id, puntaje: 1)
seccion22 = Seccion.create(name: "B", subseccion: "SECCION_3", pregunt_id: pregunta22.id, categ_id: categoria1.id, puntaje: 1)
seccionC22 = Seccion.create(name: "B", subseccion: "SECCION_3", pregunt_id: pregunta22.id, categ_id: categoria2.id, puntaje: 1)
seccionN22 = Seccion.create(name: "B", subseccion: "SECCION_3", pregunt_id: pregunta22.id, categ_id: categoria3.id, puntaje: 1)

seccion23 = Seccion.create(name: "B", subseccion: "SECCION_4", pregunt_id: pregunta23.id, categ_id: categoria1.id, puntaje: 1)
seccionC23 = Seccion.create(name: "B", subseccion: "SECCION_4", pregunt_id: pregunta23.id, categ_id: categoria2.id, puntaje: 1)
seccionN23 = Seccion.create(name: "B", subseccion: "SECCION_4", pregunt_id: pregunta23.id, categ_id: categoria3.id, puntaje: 1)

encabezado2 = Encabezado.create(categ_id: seccion13.categ_id, seccion_name: seccion13.name, encabezado: "PLANTA TURÍSTICA / SERVICIOS")
encabezadoC2 = Encabezado.create(categ_id: seccionC13.categ_id, seccion_name: seccionC13.name, encabezado: "PLANTA TURÍSTICA / SERVICIOS")
encabezadoN2 = Encabezado.create(categ_id: seccionN13.categ_id, seccion_name: seccionN13.name, encabezado: "PLANTA TURÍSTICA / SERVICIOS")
subencabezado5 = Subencabezado.create(categ_id: seccion13.categ_id, seccion_name: seccion13.name, subseccion_name: seccion13.subseccion, subencabezado: "Planta Turística")
subencabezadoC5 = Subencabezado.create(categ_id: seccionC13.categ_id, seccion_name: seccionC13.name, subseccion_name: seccionC13.subseccion, subencabezado: "Planta Turística")
subencabezadoN5 = Subencabezado.create(categ_id: seccionN13.categ_id, seccion_name: seccionN13.name, subseccion_name: seccionN13.subseccion, subencabezado: "Planta Turística")
subencabezado6 = Subencabezado.create(categ_id: seccion20.categ_id, seccion_name: seccion20.name, subseccion_name: seccion20.subseccion, subencabezado: "Seguridad")
subencabezado6 = Subencabezado.create(categ_id: seccionC20.categ_id, seccion_name: seccionC20.name, subseccion_name: seccionC20.subseccion, subencabezado: "Seguridad")
subencabezado6 = Subencabezado.create(categ_id: seccionN20.categ_id, seccion_name: seccionN20.name, subseccion_name: seccionN20.subseccion, subencabezado: "Seguridad")
subencabezado7 = Subencabezado.create(categ_id: seccion21.categ_id, seccion_name: seccion21.name, subseccion_name: seccion21.subseccion, subencabezado: "Señalización")
subencabezado7 = Subencabezado.create(categ_id: seccionC21.categ_id, seccion_name: seccionC21.name, subseccion_name: seccionC21.subseccion, subencabezado: "Señalización")
subencabezado7 = Subencabezado.create(categ_id: seccionN21.categ_id, seccion_name: seccionN21.name, subseccion_name: seccionN21.subseccion, subencabezado: "Señalización")
subencabezado8 = Subencabezado.create(categ_id: seccion23.categ_id, seccion_name: seccion23.name, subseccion_name: seccion23.subseccion, subencabezado: "Salud")
subencabezado8 = Subencabezado.create(categ_id: seccionC23.categ_id, seccion_name: seccionC23.name, subseccion_name: seccionC23.subseccion, subencabezado: "Salud")
subencabezado8 = Subencabezado.create(categ_id: seccionN23.categ_id, seccion_name: seccionN23.name, subseccion_name: seccionN23.subseccion, subencabezado: "Salud")

MaxPuntajeSeccion.create(max: 11, seccion: seccion13.name, categ: categoria1.id)
MaxPuntajeSeccion.create(max: 11, seccion: seccionC13.name, categ: categoria2.id)
MaxPuntajeSeccion.create(max: 11, seccion: seccionN13.name, categ: categoria3.id)
##############################################################################################################
# Seccion C Para Culturales Tangibles
pregunta24 = Pregunt.create(texto: "Recorridos Autoguiados", tipo: "check_box", orden: 1)
pregunta25 = Pregunt.create(texto: "Exposiciones (Permanentes, Temporales, Eventuales)", tipo: "check_box", orden: 2)
pregunta26 = Pregunt.create(texto: "Exhibición de piezas, muestras, obras, etc, originales", tipo: "check_box", orden: 3)
pregunta27 = Pregunt.create(texto: "Presentaciones o representaciones en vivo", tipo: "check_box", orden: 4)
pregunta28 = Pregunt.create(texto: "Muestras audiovisuales", tipo: "check_box", orden: 5)
pregunta29 = Pregunt.create(texto: "Actividades (Vivenciales, Lúdicas)", tipo: "check_box", orden: 6)
pregunta30 = Pregunt.create(texto: "Fotografía", tipo: "check_box", orden: 7)
pregunta31 = Pregunt.create(texto: "Información del lugar", tipo: "check_box", orden: 8)
pregunta32 = Pregunt.create(texto: "Visitas a Talleres", tipo: "check_box", orden: 9)
pregunta33 = Pregunt.create(texto: "Otros", tipo: "check_box", orden: 10, text_adicional: true)
## Seccion C para Culturales Intangibles
preguntaC24 = Pregunt.create(texto: "Mantienen Costumbres y Tradiciones", tipo: "check_box", orden: 1)
preguntaC25 = Pregunt.create(texto: "Información", tipo: "check_box", orden: 2)
preguntaC26 = Pregunt.create(texto: "Organización", tipo: "check_box", orden: 3)

seccion24 = Seccion.create(name: "C", subseccion: "SECCION_1", pregunt_id: pregunta24.id, categ_id: categoria1.id, puntaje: 0.5)
seccion25 = Seccion.create(name: "C", subseccion: "SECCION_1", pregunt_id: pregunta25.id, categ_id: categoria1.id, puntaje: 0.5)
seccion26 = Seccion.create(name: "C", subseccion: "SECCION_1", pregunt_id: pregunta26.id, categ_id: categoria1.id, puntaje: 0.5)
seccion27 = Seccion.create(name: "C", subseccion: "SECCION_1", pregunt_id: pregunta27.id, categ_id: categoria1.id, puntaje: 0.5)
seccion28 = Seccion.create(name: "C", subseccion: "SECCION_1", pregunt_id: pregunta28.id, categ_id: categoria1.id, puntaje: 0.5)
seccion29 = Seccion.create(name: "C", subseccion: "SECCION_1", pregunt_id: pregunta29.id, categ_id: categoria1.id, puntaje: 0.5)
seccion30 = Seccion.create(name: "C", subseccion: "SECCION_1", pregunt_id: pregunta30.id, categ_id: categoria1.id, puntaje: 0.5)
seccion31 = Seccion.create(name: "C", subseccion: "SECCION_1", pregunt_id: pregunta31.id, categ_id: categoria1.id, puntaje: 0.5)
seccion32 = Seccion.create(name: "C", subseccion: "SECCION_1", pregunt_id: pregunta32.id, categ_id: categoria1.id, puntaje: 0.5)
seccion33 = Seccion.create(name: "C", subseccion: "SECCION_1", pregunt_id: pregunta33.id, categ_id: categoria1.id, puntaje: 0.5)

seccionC24 = Seccion.create(name: "C", subseccion: "SECCION_1", pregunt_id: preguntaC24.id, categ_id: categoria2.id, puntaje: 3)
seccionC25 = Seccion.create(name: "C", subseccion: "SECCION_1", pregunt_id: preguntaC25.id, categ_id: categoria2.id, puntaje: 1)
seccionC26 = Seccion.create(name: "C", subseccion: "SECCION_1", pregunt_id: preguntaC26.id, categ_id: categoria2.id, puntaje: 1)

encabezado3 = Encabezado.create(categ_id: seccion24.categ_id, seccion_name: seccion24.name, encabezado: "ACTIVIDADES QUE SE PRACTICAN EN EL SITIO / OTROS")
encabezadoC3 = Encabezado.create(categ_id: seccionC24.categ_id, seccion_name: seccionC24.name, encabezado: "ACTIVIDADES QUE SE PRACTICAN EN EL SITIO / OTROS")
subencabezado5 = Subencabezado.create(categ_id: seccion24.categ_id, seccion_name: seccion24.name, subseccion_name: seccion24.subseccion, subencabezado: "Tangibles")
subencabezadoC5 = Subencabezado.create(categ_id: seccionC24.categ_id, seccion_name: seccionC24.name, subseccion_name: seccionC24.subseccion, subencabezado: "Intangibles")

MaxPuntajeSeccion.create(max: 5, seccion: seccion24.name, categ: categoria1.id)
MaxPuntajeSeccion.create(max: 5, seccion: seccionC24.name, categ: categoria2.id)
############################################################
pregunta34 = Pregunt.create(texto: "Alterado", tipo: "check_box", orden: 1)

seccion34 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta34.id, categ_id: categoria1.id, puntaje: 5)
seccionC34 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta34.id, categ_id: categoria2.id, puntaje: 5)
seccionN34 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta34.id, categ_id: categoria3.id, puntaje: 5)

pregunta35 = Pregunt.create(texto: "No alterado", tipo: "check_box", orden: 2)

seccion35 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta35.id, categ_id: categoria1.id, puntaje: 15)
seccionC35 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta35.id, categ_id: categoria2.id, puntaje: 15)
seccionN35 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta35.id, categ_id: categoria3.id, puntaje: 15)

pregunta36 = Pregunt.create(texto: "Conservado", tipo: "check_box", orden: 3)

seccion36 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta36.id, categ_id: categoria1.id, puntaje: 10)
seccionC36 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta36.id, categ_id: categoria2.id, puntaje: 10)
seccionN36 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta36.id, categ_id: categoria3.id, puntaje: 10)

pregunta37 = Pregunt.create(texto: "Deteriorado", tipo: "check_box", orden: 4)

seccion37 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta37.id, categ_id: categoria1.id, puntaje: 4)
seccionC37 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta37.id, categ_id: categoria2.id, puntaje: 4)
seccionN37 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta37.id, categ_id: categoria3.id, puntaje: 4)

pregunta38 = Pregunt.create(texto: "En proceso de deterioro", tipo: "check_box", orden: 5)

seccion38 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta38.id, categ_id: categoria1.id, puntaje: 3)
seccionC38 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta38.id, categ_id: categoria2.id, puntaje: 3)
seccionN38 = Seccion.create(name: "D", subseccion: "SECCION_1", pregunt_id: pregunta38.id, categ_id: categoria3.id, puntaje: 3)

encabezado4 = Encabezado.create(categ_id: seccion34.categ_id, seccion_name: seccion34.name, encabezado: "ESTADO DE CONSERVACION DEL ATRACTIVO Y ENTORNO")
encabezadoC4 = Encabezado.create(categ_id: seccionC34.categ_id, seccion_name: seccionC34.name, encabezado: "ESTADO DE CONSERVACION DEL ATRACTIVO Y ENTORNO")
encabezadoN4 = Encabezado.create(categ_id: seccionN34.categ_id, seccion_name: seccionN34.name, encabezado: "ESTADO DE CONSERVACION DEL ATRACTIVO Y ENTORNO")


subencabezado6 = Subencabezado.create(categ_id: seccion34.categ_id, seccion_name: seccion34.name, subseccion_name: seccion34.subseccion, subencabezado: "Atractivo")
subencabezadoC6 = Subencabezado.create(categ_id: seccionC34.categ_id, seccion_name: seccionC34.name, subseccion_name: seccionC34.subseccion, subencabezado: "Atractivo")
subencabezadoN6 = Subencabezado.create(categ_id: seccionN34.categ_id, seccion_name: seccionN34.name, subseccion_name: seccionN34.subseccion, subencabezado: "Atractivo")

pregunta39 = Pregunt.create(texto: "Alterado", tipo: "check_box", orden: 1)

seccion39 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta39.id, categ_id: categoria1.id, puntaje: 4)
seccionC39 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta39.id, categ_id: categoria2.id, puntaje: 4)
seccionN39 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta39.id, categ_id: categoria3.id, puntaje: 4)

pregunta40 = Pregunt.create(texto: "No Alterado", tipo: "check_box", orden: 2)

seccion40 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta40.id, categ_id: categoria1.id, puntaje: 13)
seccionC40 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta40.id, categ_id: categoria2.id, puntaje: 13)
seccionN40 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta40.id, categ_id: categoria3.id, puntaje: 13)

pregunta41 = Pregunt.create(texto: "Conservado", tipo: "check_box", orden: 3)

seccion41 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta41.id, categ_id: categoria1.id, puntaje: 8)
seccionC41 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta41.id, categ_id: categoria2.id, puntaje: 8)
seccionN41 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta41.id, categ_id: categoria3.id, puntaje: 8)

pregunta42 = Pregunt.create(texto: "Deteriorado", tipo: "check_box", orden: 4)

seccion42 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta42.id, categ_id: categoria1.id, puntaje: 3)
seccionC42 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta42.id, categ_id: categoria2.id, puntaje: 3)
seccionN42 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta42.id, categ_id: categoria3.id, puntaje: 3)

pregunta43 = Pregunt.create(texto: "En proceso de deterioro", tipo: "check_box", orden: 5)

seccion43 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta43.id, categ_id: categoria1.id, puntaje: 2)
seccionC43 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta43.id, categ_id: categoria2.id, puntaje: 2)
seccionN43 = Seccion.create(name: "D", subseccion: "SECCION_2", pregunt_id: pregunta43.id, categ_id: categoria3.id, puntaje: 2)

subencabezado7 = Subencabezado.create(categ_id: seccion39.categ_id, seccion_name: seccion39.name, subseccion_name: seccion39.subseccion, subencabezado: "Entorno")
subencabezadoC7 = Subencabezado.create(categ_id: seccionC39.categ_id, seccion_name: seccionC39.name, subseccion_name: seccionC39.subseccion, subencabezado: "Entorno")
subencabezadoN7 = Subencabezado.create(categ_id: seccionN39.categ_id, seccion_name: seccionN39.name, subseccion_name: seccionN39.subseccion, subencabezado: "Entorno")

pregunta44 = Pregunt.create(texto: "Si", tipo: "radio_button", orden: 1)

seccion44 = Seccion.create(name: "D", subseccion: "SECCION_3", pregunt_id: pregunta44.id, categ_id: categoria1.id, puntaje: 1)
seccionC44 = Seccion.create(name: "D", subseccion: "SECCION_3", pregunt_id: pregunta44.id, categ_id: categoria2.id, puntaje: 1)
seccionN44 = Seccion.create(name: "D", subseccion: "SECCION_3", pregunt_id: pregunta44.id, categ_id: categoria3.id, puntaje: 1)

pregunta45 = Pregunt.create(texto: "No", tipo: "radio_button", orden: 2)

seccion45 = Seccion.create(name: "D", subseccion: "SECCION_3", pregunt_id: pregunta45.id, categ_id: categoria1.id, puntaje: 0)
seccionC45 = Seccion.create(name: "D", subseccion: "SECCION_3", pregunt_id: pregunta45.id, categ_id: categoria2.id, puntaje: 0)
seccionN45 = Seccion.create(name: "D", subseccion: "SECCION_3", pregunt_id: pregunta45.id, categ_id: categoria3.id, puntaje: 0)

subencabezado8 = Subencabezado.create(categ_id: seccion44.categ_id, seccion_name: seccion44.name, subseccion_name: seccion44.subseccion, subencabezado: "Armonía con el paisaje natural o cultural que lo rodea")
subencabezadoC8 = Subencabezado.create(categ_id: seccionC44.categ_id, seccion_name: seccionC44.name, subseccion_name: seccionC44.subseccion, subencabezado: "Armonía con el paisaje natural o cultural que lo rodea")
subencabezadoN8 = Subencabezado.create(categ_id: seccionN44.categ_id, seccion_name: seccionN44.name, subseccion_name: seccionN44.subseccion, subencabezado: "Armonía con el paisaje natural o cultural que lo rodea")

pregunta46 = Pregunt.create(texto: "Si", tipo: "radio_button", orden: 1)

seccion46 = Seccion.create(name: "D", subseccion: "SECCION_4", pregunt_id: pregunta46.id, categ_id: categoria1.id, puntaje: 1)
seccionC46 = Seccion.create(name: "D", subseccion: "SECCION_4", pregunt_id: pregunta46.id, categ_id: categoria2.id, puntaje: 1)
seccionN46 = Seccion.create(name: "D", subseccion: "SECCION_4", pregunt_id: pregunta46.id, categ_id: categoria3.id, puntaje: 1)

pregunta47 = Pregunt.create(texto: "No", tipo: "radio_button", orden: 2)

seccion47 = Seccion.create(name: "D", subseccion: "SECCION_4", pregunt_id: pregunta47.id, categ_id: categoria1.id, puntaje: 0)
seccionC47 = Seccion.create(name: "D", subseccion: "SECCION_4", pregunt_id: pregunta47.id, categ_id: categoria2.id, puntaje: 0)
seccionN47 = Seccion.create(name: "D", subseccion: "SECCION_4", pregunt_id: pregunta47.id, categ_id: categoria3.id, puntaje: 0)

subencabezado9 = Subencabezado.create(categ_id: seccion46.categ_id, seccion_name: seccion46.name, subseccion_name: seccion46.subseccion, subencabezado: "Declaratoria del Atractivo")
subencabezadoC9 = Subencabezado.create(categ_id: seccionC46.categ_id, seccion_name: seccionC46.name, subseccion_name: seccionC46.subseccion, subencabezado: "Declaratoria del Atractivo")
subencabezadoN9 = Subencabezado.create(categ_id: seccionN46.categ_id, seccion_name: seccionN46.name, subseccion_name: seccionN46.subseccion, subencabezado: "Declaratoria del Atractivo")

MaxPuntajeSeccion.create(max: 30, seccion: seccion34.name, categ: categoria1.id)
MaxPuntajeSeccion.create(max: 30, seccion: seccionC34.name, categ: categoria2.id)
MaxPuntajeSeccion.create(max: 30, seccion: seccionN34.name, categ: categoria3.id)
########################################################################################
pregunta48 = Pregunt.create(texto: "Nacional", tipo: "check_box", orden: 1)
pregunta49 = Pregunt.create(texto: "Extranjero", tipo: "check_box", orden: 2)

pregunta50 = Pregunt.create(texto: "Turista", tipo: "check_box", orden: 1)
pregunta51 = Pregunt.create(texto: "Excursionista", tipo: "check_box", orden: 2)

pregunta52 = Pregunt.create(texto: "Alta", tipo: "check_box", orden: 1)
pregunta53 = Pregunt.create(texto: "Media", tipo: "check_box", orden: 2)
pregunta54 = Pregunt.create(texto: "Baja", tipo: "check_box", orden: 3)

seccion48 = Seccion.create(name: "E", subseccion: "SECCION_1", pregunt_id: pregunta48.id, categ_id: categoria1.id, puntaje: 5)
seccionC48 = Seccion.create(name: "E", subseccion: "SECCION_1", pregunt_id: pregunta48.id, categ_id: categoria2.id, puntaje: 5)
seccionN48 = Seccion.create(name: "E", subseccion: "SECCION_1", pregunt_id: pregunta48.id, categ_id: categoria3.id, puntaje: 5)

seccion49 = Seccion.create(name: "E", subseccion: "SECCION_1", pregunt_id: pregunta49.id, categ_id: categoria1.id, puntaje: 10)
seccionC49 = Seccion.create(name: "E", subseccion: "SECCION_1", pregunt_id: pregunta49.id, categ_id: categoria2.id, puntaje: 10)
seccionN49 = Seccion.create(name: "E", subseccion: "SECCION_1", pregunt_id: pregunta49.id, categ_id: categoria3.id, puntaje: 10)

encabezado5 = Encabezado.create(categ_id: seccion48.categ_id, seccion_name: seccion48.name, encabezado: "TIPO DE VISITANTE Y AFLUENCIA")
encabezadoC5 = Encabezado.create(categ_id: seccionC48.categ_id, seccion_name: seccionC48.name, encabezado: "TIPO DE VISITANTE Y AFLUENCIA")
encabezadoN5 = Encabezado.create(categ_id: seccionN48.categ_id, seccion_name: seccionN48.name, encabezado: "TIPO DE VISITANTE Y AFLUENCIA")

subencabezado10 = Subencabezado.create(categ_id: seccion48.categ_id, seccion_name: seccion48.name, subseccion_name: seccion48.subseccion, subencabezado: "Afluencia")
subencabezadoC10 = Subencabezado.create(categ_id: seccionC48.categ_id, seccion_name: seccionC48.name, subseccion_name: seccionC48.subseccion, subencabezado: "Afluencia")
subencabezadoN10 = Subencabezado.create(categ_id: seccionN48.categ_id, seccion_name: seccionN48.name, subseccion_name: seccionN48.subseccion, subencabezado: "Afluencia")

seccion50 = Seccion.create(name: "E", subseccion: "SECCION_2", pregunt_id: pregunta50.id, categ_id: categoria1.id, puntaje: 6)
seccionC50 = Seccion.create(name: "E", subseccion: "SECCION_2", pregunt_id: pregunta50.id, categ_id: categoria2.id, puntaje: 6)
seccionN50 = Seccion.create(name: "E", subseccion: "SECCION_2", pregunt_id: pregunta50.id, categ_id: categoria3.id, puntaje: 6)

seccion51 = Seccion.create(name: "E", subseccion: "SECCION_2", pregunt_id: pregunta51.id, categ_id: categoria1.id, puntaje: 3)
seccionC51 = Seccion.create(name: "E", subseccion: "SECCION_2", pregunt_id: pregunta51.id, categ_id: categoria2.id, puntaje: 3)
seccionN51 = Seccion.create(name: "E", subseccion: "SECCION_2", pregunt_id: pregunta51.id, categ_id: categoria3.id, puntaje: 3)

subencabezado11 = Subencabezado.create(categ_id: seccion50.categ_id, seccion_name: seccion50.name, subseccion_name: seccion50.subseccion, subencabezado: "Tipo")
subencabezadoC11 = Subencabezado.create(categ_id: seccionC50.categ_id, seccion_name: seccionC50.name, subseccion_name: seccionC50.subseccion, subencabezado: "Tipo")
subencabezadoN11 = Subencabezado.create(categ_id: seccionN50.categ_id, seccion_name: seccionN50.name, subseccion_name: seccionN50.subseccion, subencabezado: "Tipo")

seccion52 = Seccion.create(name: "E", subseccion: "SECCION_3", pregunt_id: pregunta52.id, categ_id: categoria1.id, puntaje: 4)
seccionC52 = Seccion.create(name: "E", subseccion: "SECCION_3", pregunt_id: pregunta52.id, categ_id: categoria2.id, puntaje: 4)
seccionN52 = Seccion.create(name: "E", subseccion: "SECCION_3", pregunt_id: pregunta52.id, categ_id: categoria3.id, puntaje: 4)

seccion53 = Seccion.create(name: "E", subseccion: "SECCION_3", pregunt_id: pregunta53.id, categ_id: categoria1.id, puntaje: 2)
seccionC53 = Seccion.create(name: "E", subseccion: "SECCION_3", pregunt_id: pregunta53.id, categ_id: categoria2.id, puntaje: 2)
seccionN53 = Seccion.create(name: "E", subseccion: "SECCION_3", pregunt_id: pregunta53.id, categ_id: categoria3.id, puntaje: 2)

seccion54 = Seccion.create(name: "E", subseccion: "SECCION_3", pregunt_id: pregunta54.id, categ_id: categoria1.id, puntaje: 1)
seccionC54 = Seccion.create(name: "E", subseccion: "SECCION_3", pregunt_id: pregunta54.id, categ_id: categoria2.id, puntaje: 1)
seccionN54 = Seccion.create(name: "E", subseccion: "SECCION_3", pregunt_id: pregunta54.id, categ_id: categoria3.id, puntaje: 1)

subencabezado12 = Subencabezado.create(categ_id: seccion52.categ_id, seccion_name: seccion52.name, subseccion_name: seccion52.subseccion, subencabezado: "Frecuencia")
subencabezadoC12 = Subencabezado.create(categ_id: seccionC52.categ_id, seccion_name: seccionC52.name, subseccion_name: seccionC52.subseccion, subencabezado: "Frecuencia")
subencabezadoN12 = Subencabezado.create(categ_id: seccionN52.categ_id, seccion_name: seccionN52.name, subseccion_name: seccionN52.subseccion, subencabezado: "Frecuencia")

MaxPuntajeSeccion.create(max: 20, seccion: seccion48.name, categ: categoria1.id)
MaxPuntajeSeccion.create(max: 20, seccion: seccionC48.name, categ: categoria2.id)
MaxPuntajeSeccion.create(max: 20, seccion: seccionN48.name, categ: categoria3.id)
#################################################################################
pregunta55 = Pregunt.create(texto: "Local", tipo: "check_box", orden: 1)
pregunta56 = Pregunt.create(texto: "Provincia", tipo: "check_box", orden: 2)
pregunta57 = Pregunt.create(texto: "Regional", tipo: "check_box", orden: 3)
pregunta58 = Pregunt.create(texto: "Nacional", tipo: "check_box", orden: 4)
pregunta59 = Pregunt.create(texto: "Internacional", tipo: "check_box", orden: 5)

pregunta60 = Pregunt.create(texto: "Si", tipo: "radio_button", orden: 1)
pregunta61 = Pregunt.create(texto: "No", tipo: "radio_button", orden: 2)

seccion55 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta55.id, categ_id: categoria1.id, puntaje: 3)
seccionC55 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta55.id, categ_id: categoria2.id, puntaje: 3)
seccionN55 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta55.id, categ_id: categoria3.id, puntaje: 3)

seccion56 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta56.id, categ_id: categoria1.id, puntaje: 5)
seccionC56 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta56.id, categ_id: categoria2.id, puntaje: 5)
seccionN56 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta56.id, categ_id: categoria3.id, puntaje: 5)

seccion57 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta57.id, categ_id: categoria1.id, puntaje: 7)
seccionC57 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta57.id, categ_id: categoria2.id, puntaje: 7)
seccionN57 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta57.id, categ_id: categoria3.id, puntaje: 7)

seccion58 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta58.id, categ_id: categoria1.id, puntaje: 17)
seccionC58 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta58.id, categ_id: categoria2.id, puntaje: 17)
seccionN58 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta58.id, categ_id: categoria3.id, puntaje: 17)

seccion59 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta59.id, categ_id: categoria1.id, puntaje: 23)
seccionC59 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta59.id, categ_id: categoria2.id, puntaje: 23)
seccionN59 = Seccion.create(name: "F", subseccion: "SECCION_1", pregunt_id: pregunta59.id, categ_id: categoria3.id, puntaje: 23)

encabezado6 = Encabezado.create(categ_id: seccion55.categ_id, seccion_name: seccion55.name, encabezado: "DIFUSION DEL ATRACTIVO")
encabezadoC6 = Encabezado.create(categ_id: seccionC55.categ_id, seccion_name: seccionC55.name, encabezado: "DIFUSION DEL ATRACTIVO")
encabezadoN6 = Encabezado.create(categ_id: seccionN55.categ_id, seccion_name: seccionN55.name, encabezado: "DIFUSION DEL ATRACTIVO")

subencabezado13 = Subencabezado.create(categ_id: seccion55.categ_id, seccion_name: seccion55.name, subseccion_name: seccion55.subseccion, subencabezado: "Difusión")
subencabezadoC13 = Subencabezado.create(categ_id: seccionC55.categ_id, seccion_name: seccionC55.name, subseccion_name: seccionC55.subseccion, subencabezado: "Difusión")
subencabezadoN13 = Subencabezado.create(categ_id: seccionN55.categ_id, seccion_name: seccionN55.name, subseccion_name: seccionN55.subseccion, subencabezado: "Difusión")

seccion60 = Seccion.create(name: "F", subseccion: "SECCION_2", pregunt_id: pregunta60.id, categ_id: categoria1.id, puntaje: 2)
seccionC60 = Seccion.create(name: "F", subseccion: "SECCION_2", pregunt_id: pregunta60.id, categ_id: categoria2.id, puntaje: 2)
seccionN60 = Seccion.create(name: "F", subseccion: "SECCION_2", pregunt_id: pregunta60.id, categ_id: categoria3.id, puntaje: 2)

seccion61 = Seccion.create(name: "F", subseccion: "SECCION_2", pregunt_id: pregunta61.id, categ_id: categoria1.id, puntaje: 0)
seccionC61 = Seccion.create(name: "F", subseccion: "SECCION_2", pregunt_id: pregunta61.id, categ_id: categoria2.id, puntaje: 0)
seccionN61 = Seccion.create(name: "F", subseccion: "SECCION_2", pregunt_id: pregunta61.id, categ_id: categoria3.id, puntaje: 0)

subencabezado14 = Subencabezado.create(categ_id: seccion60.categ_id, seccion_name: seccion60.name, subseccion_name: seccion60.subseccion, subencabezado: "Asociación con otros atractivos")
subencabezado15 = Subencabezado.create(categ_id: seccionC60.categ_id, seccion_name: seccionC60.name, subseccion_name: seccionC60.subseccion, subencabezado: "Asociación con otros atractivos")
subencabezado16 = Subencabezado.create(categ_id: seccionN60.categ_id, seccion_name: seccionN60.name, subseccion_name: seccionN60.subseccion, subencabezado: "Asociación con otros atractivos")

MaxPuntajeSeccion.create(max: 25, seccion: seccion55.name, categ: categoria1.id)
MaxPuntajeSeccion.create(max: 25, seccion: seccionC55.name, categ: categoria2.id)
MaxPuntajeSeccion.create(max: 25, seccion: seccionN55.name, categ: categoria3.id)
