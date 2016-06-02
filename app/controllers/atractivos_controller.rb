class AtractivosController < ApplicationController
  before_action :set_atractivo, only: [:show, :edit, :update, :destroy]

  # GET /atractivos
  # GET /atractivos.json
  def index
    @atractivos = Atractivo.all.order(:prov_id)
  end

  # GET /atractivos/1
  # GET /atractivos/1.json
  def show
  end

  # GET /atractivos/new
  def new
    @atractivo = Atractivo.new
    @provs = Prov.all
    @cants = Cant.where("prov_id = ?", Prov.first.id)
    @parrs = Parr.where("cant_id = ?", Cant.first.id)

    @categs = Categ.all
    @tipos = Tipo.where("categ_id = ?", Categ.first.id)
    @subtipos = Subtipo.where("tipo_id = ?", Tipo.first.id)
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

        format.html { redirect_to @atractivo, notice: 'Atractivo was successfully created.' }
        format.json { render :show, status: :created, location: @atractivo }
      else
        @provs = Prov.all
        format.html { render :new }
        format.json { render json: @atractivo.errors, status: :unprocessable_entity }
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
    @cants = Cant.where("prov_id = ?", params[:prov_id])
    respond_to do |format|
      format.js
    end
  end

  def add_parroquias
    @parrs = Parr.where("cant_id = ?", params[:cant_id])
    respond_to do |format|
      format.js
    end
  end 

  def add_tipos
    @tipos = Tipo.where("categ_id = ?", params[:categ_id])
    respond_to do |format|
      format.js
    end
  end

  def add_subtipos
    @subtipos = Subtipo.where("tipo_id = ?", params[:tipo_id])
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
      params.require(:atractivo).permit(:name, :description, :parr_id, :cant_id, :prov_id, :subtipo_id, :tipo_id, :categ_id, :calle_principal, :numero_direccion, :transversal_direccion, :barrio_direccion, :sitio_cercano, :latitud, :longitud, :altura, :clima, :temperatura, :precipitacion, :avatar)
    end
end
