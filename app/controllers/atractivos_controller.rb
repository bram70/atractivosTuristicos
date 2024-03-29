class AtractivosController < ApplicationController
  before_action :set_atractivo, only: [:show, :popup, :edit, :update, :destroy]
  layout false, only: [:popup]

  # GET /atractivos
  # GET /atractivos.json
  def index
      if params[:idCanton].present?
        session[:id_canton] = params[:idCanton] 
        @atractivos = Atractivo.atractivosByCanton(session[:id_canton]).paginate(:page => params[:page], :per_page => 10).order('id DESC')
      else
       url = "http://siete.turismo.gob.ec/establecimientos-admin/"
       redirect_to url
      end
  end

  # GET /atractivos/1
  # GET /atractivos/1.json
  def show
    @avatar_atractivos = @atractivo.avatar_atractivos.all
  end

  # GET /atractivos/1
  def popup 
    @avatar_atractivos = @atractivo.avatar_atractivos.all
  end

  # GET /atractivos/new
  def new
    @atractivo = Atractivo.new
    @atractivo.cant_id = session[:id_canton]

    @cant = Cant.find(@atractivo.cant_id)
    @prov = Prov.find(@cant.prov)
    @parrs = Parr.where("cant_id = ?", "#{@cant.id}")
    @avatar_atractivo = @atractivo.avatar_atractivos.build
  end

  # GET /atractivos/1/edit
  def edit
    @atractivo = Atractivo.new
    @provs = Prov.all
    @cants = Cant.where("prov_id = ?", Prov.first.id)
    @parrs = Parr.where("cant_id = ?", Cant.first.id)

    @categs = Categ.all
    @tipos = Tipo.where("categ_id = ?", Categ.first.id)
    @subtipos = Subtipo.where("tipo_id = ?", Tipo.first.id)
  end

  # POST /atractivos
  # POST /atractivos.json
  def create
    @atractivo = Atractivo.new(atractivo_params)

    respond_to do |format|
      if @atractivo.save
        params[:avatar_atractivos]['avatar'].each do |a|
          @avatar_atractivo = @atractivo.avatar_atractivos.new(:avatar => a, :atractivo_id => @atractivo.id)
          if !@avatar_atractivo.save
            format.html { render :new }
            format.json { render json: @avatar_atractivo.errors.full_messages, status: :unprocessable_entity }
          end
        end
        format.html { redirect_to url_for(id: @atractivo.id, :action => 'nextstep', :controller => 'cuestionarios') }
      else
        @avatar_atractivo = @atractivo.avatar_atractivos.build
        format.html { render :new }
        format.json { render json: @atractivo.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atractivos/1
  # PATCH/PUT /atractivos/1.json
  def update
    respond_to do |format|
      if @atractivo.update(atractivo_params)
        format.html { redirect_to @atractivo, notice: 'Atractivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @atractivo }
      else
        format.html { render :edit }
        format.json { render json: @atractivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atractivos/1
  # DELETE /atractivos/1.json
  def destroy
    @atractivo.destroy
    respond_to do |format|
      format.html { redirect_to atractivos_url, notice: 'Atractivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_cantones
    @cants = Cant.where("prov_id = ?", params[:prov_id]).order(:name)
    respond_to do |format|
      format.js
    end
  end

  def add_parroquias
    @parrs = Parr.where("cant_id = ?", params[:cant_id]).order(:name)
    respond_to do |format|
      format.js
    end
  end 

  def add_tipos
    @tipos = Tipo.where("categ_id = ?", params[:categ_id]).order(:name)
    respond_to do |format|
      format.js
    end
  end

  def add_subtipos
    @subtipos = Subtipo.where("tipo_id = ?", params[:tipo_id]).order(:name)
    respond_to do |format|
      format.js
    end
  end

  def add_climate_data
    @clima = Climate.find(params[:clima_id])
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atractivo
      @atractivo = Atractivo.find(params[:id])
      @provs = Prov.find(@atractivo.prov)
      @cants = Cant.where("prov_id = ?", @atractivo.cant)
      @parrs = Parr.where("cant_id = ?", @atractivo.parr)

      @categs = Categ.where(@atractivo.categ)
      @tipos = Tipo.where(@atractivo.tipo_id)
      @subtipos = Subtipo.where("tipo_id = ?", @atractivo.subtipo)
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def atractivo_params
      params.require(:atractivo).permit(:name, :description, :parr_id, :cant_id, :prov_id, :subtipo_id, :tipo_id, :categ_id, :calle_principal, :numero_direccion, :transversal_direccion, :barrio_direccion, :sitio_cercano, :latitud, :longitud, :altura, :climate_id, avatar_atractivos_attributes: [:id, :atractivo_id, :avatar])
    end
end
