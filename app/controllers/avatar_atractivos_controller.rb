class AvatarAtractivosController < ApplicationController
  before_action :set_avatar_atractivo, only: [:show, :edit, :update, :destroy]

  # GET /avatar_atractivos
  # GET /avatar_atractivos.json
  def index
    @avatar_atractivos = AvatarAtractivo.all
  end

  # GET /avatar_atractivos/1
  # GET /avatar_atractivos/1.json
  def show
  end

  # GET /avatar_atractivos/new
  def new
    @avatar_atractivo = AvatarAtractivo.new
  end

  # GET /avatar_atractivos/1/edit
  def edit
  end

  # POST /avatar_atractivos
  # POST /avatar_atractivos.json
  def create
    @avatar_atractivo = AvatarAtractivo.new(avatar_atractivo_params)

    respond_to do |format|
      if @avatar_atractivo.save
        format.html { redirect_to @avatar_atractivo, notice: 'Avatar atractivo was successfully created.' }
        format.json { render :show, status: :created, location: @avatar_atractivo }
      else
        format.html { render :new }
        format.json { render json: @avatar_atractivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avatar_atractivos/1
  # PATCH/PUT /avatar_atractivos/1.json
  def update
    respond_to do |format|
      if @avatar_atractivo.update(avatar_atractivo_params)
        format.html { redirect_to @avatar_atractivo, notice: 'Avatar atractivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @avatar_atractivo }
      else
        format.html { render :edit }
        format.json { render json: @avatar_atractivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avatar_atractivos/1
  # DELETE /avatar_atractivos/1.json
  def destroy
    @avatar_atractivo.destroy
    respond_to do |format|
      format.html { redirect_to avatar_atractivos_url, notice: 'Avatar atractivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avatar_atractivo
      @avatar_atractivo = AvatarAtractivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avatar_atractivo_params
      params.require(:avatar_atractivo).permit(:atractivo_id, :avatar)
    end
end
