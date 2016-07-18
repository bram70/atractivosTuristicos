class CuestionariosController < ApplicationController
  def nextstep
    @atractivo_c = Atractivo.find(params[:id])
    @seccion_p = @atractivo_c.getNextSeccion()
    @encabezado = Encabezado.getEncabezado(@atractivo_c.categ_id, @seccion_p)
    @preg_seccion1 = @atractivo_c.preguntasxNameSeccion(@seccion_p)
    @preg_seccion1.each do |pregunta|
      pregunta.respuests.build
    end
    @percentage = @atractivo_c.getPercentage()
  end

  def savestep
    atractivo_id = params[:atractivo]
    preguntas_true = params[:seccion].select{|key,hash| hash == "1"}.keys
    puntaje = PuntajeAtractivo.where(atractivo_id: atractivo_id).first_or_create
    pregunta_radio_button = params[:seccion].select{|key,hash| key.include?("radio")}.values
    puntos = 0
    preguntas_true.each do |pregunta_id|
      pregunta = Pregunt.find(pregunta_id)
      if pregunta.text_adicional
        preguntas_texto = params[:seccion].select{|key,hash| key.include?("texto"+pregunta_id)}.values
        if preguntas_texto.size > 0
          resp = Respuest.where(rpta: true, pregunt_id: pregunta_id, atractivo_id: atractivo_id).first_or_create
          resp.especifique = preguntas_texto.first
        else
          resp = Respuest.where(rpta: true, pregunt_id: pregunta_id, atractivo_id: atractivo_id).first_or_create
        end
      else
          resp = Respuest.where(rpta: true, pregunt_id: pregunta_id, atractivo_id: atractivo_id).first_or_create
      end
      resp.save!
      max_puntaje = MaxPuntajeSeccion.getMaxByPregunta(pregunta_id)
      if puntos < max_puntaje
        puntos = puntos + Seccion.getPuntaje(pregunta_id)
      end
    end

    pregunta_radio_button.each do |pregunta_id|
      pregunta = Pregunt.find(pregunta_id)
      resp = Respuest.where(rpta: true, pregunt_id: pregunta_id, atractivo_id: atractivo_id).first_or_create
      resp.especifique = pregunta.texto.first
      resp.save!
      max_puntaje = MaxPuntajeSeccion.getMaxByPregunta(pregunta_id)
      if puntos < max_puntaje
        puntos = puntos + Seccion.getPuntaje(pregunta_id)
      end
    end

    puntaje.puntos = puntaje.puntos + puntos
    puntaje.save!
    @atractivo_c = Atractivo.find(atractivo_id)
    @atractivo_c.step = @atractivo_c.step + 1
    @atractivo_c.save!
    ################
    @seccion_p = @atractivo_c.getNextSeccion()

    if @seccion_p
      @encabezado = Encabezado.getEncabezado(@atractivo_c.categ_id, @seccion_p)
      @preg_seccion1 = @atractivo_c.preguntasxNameSeccion(@seccion_p)
      @preg_seccion1.each do |pregunta|
        pregunta.respuests.build
      end
      @percentage = @atractivo_c.getPercentage()

      respond_to do |format|
        format.html { render :template => "cuestionarios/nextstep.html.erb", id: atractivo_id }
      end
    else
      pa = PuntajeAtractivo.where(atractivo_id: atractivo_id).first
      jerarquia = pa.computeJerarquia() 
      codigo = @atractivo_c.GenerateCodigoAtractivo(jerarquia)
      @atractivo_c.codigo = codigo 
      @atractivo_c.save!
      respond_to do |format|
        format.html { redirect_to url_for( :action => 'index', :controller => 'atractivos', notice: 'Atractivo creado satisfactoriamente.') }
      end
    end
  end
end
