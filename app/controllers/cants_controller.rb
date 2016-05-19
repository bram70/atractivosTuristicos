class CantsController < ApplicationController
  before_action :set_cant, only: [:show, :edit, :update, :destroy]

  # GET /cants
  # GET /cants.json
  def index
    @cants = Cant.all
  end

  # GET /cants/1
  # GET /cants/1.json
  def show
  end

  # GET /cants/new
  def new
    @cant = Cant.new
  end

  # GET /cants/1/edit
  def edit
  end

  # POST /cants
  # POST /cants.json
  def create
    @cant = Cant.new(cant_params)

    respond_to do |format|
      if @cant.save
        format.html { redirect_to @cant, notice: 'Cant was successfully created.' }
        format.json { render :show, status: :created, location: @cant }
      else
        format.html { render :new }
        format.json { render json: @cant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cants/1
  # PATCH/PUT /cants/1.json
  def update
    respond_to do |format|
      if @cant.update(cant_params)
        format.html { redirect_to @cant, notice: 'Cant was successfully updated.' }
        format.json { render :show, status: :ok, location: @cant }
      else
        format.html { render :edit }
        format.json { render json: @cant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cants/1
  # DELETE /cants/1.json
  def destroy
    @cant.destroy
    respond_to do |format|
      format.html { redirect_to cants_url, notice: 'Cant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cant
      @cant = Cant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cant_params
      params.require(:cant).permit(:name, :prov_id)
    end
end
