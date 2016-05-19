class SubtiposController < ApplicationController
  before_action :set_subtipo, only: [:show, :edit, :update, :destroy]

  # GET /subtipos
  # GET /subtipos.json
  def index
    @subtipos = Subtipo.all
  end

  # GET /subtipos/1
  # GET /subtipos/1.json
  def show
  end

  # GET /subtipos/new
  def new
    @subtipo = Subtipo.new
  end

  # GET /subtipos/1/edit
  def edit
  end

  # POST /subtipos
  # POST /subtipos.json
  def create
    @subtipo = Subtipo.new(subtipo_params)

    respond_to do |format|
      if @subtipo.save
        format.html { redirect_to @subtipo, notice: 'Subtipo was successfully created.' }
        format.json { render :show, status: :created, location: @subtipo }
      else
        format.html { render :new }
        format.json { render json: @subtipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subtipos/1
  # PATCH/PUT /subtipos/1.json
  def update
    respond_to do |format|
      if @subtipo.update(subtipo_params)
        format.html { redirect_to @subtipo, notice: 'Subtipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @subtipo }
      else
        format.html { render :edit }
        format.json { render json: @subtipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subtipos/1
  # DELETE /subtipos/1.json
  def destroy
    @subtipo.destroy
    respond_to do |format|
      format.html { redirect_to subtipos_url, notice: 'Subtipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subtipo
      @subtipo = Subtipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subtipo_params
      params.require(:subtipo).permit(:name, :tipo_id)
    end
end
