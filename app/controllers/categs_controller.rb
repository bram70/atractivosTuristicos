class CategsController < ApplicationController
  before_action :set_categ, only: [:show, :edit, :update, :destroy]

  # GET /categs
  # GET /categs.json
  def index
    @categs = Categ.all
  end

  # GET /categs/1
  # GET /categs/1.json
  def show
  end

  # GET /categs/new
  def new
    @categ = Categ.new
  end

  # GET /categs/1/edit
  def edit
  end

  # POST /categs
  # POST /categs.json
  def create
    @categ = Categ.new(categ_params)

    respond_to do |format|
      if @categ.save
        format.html { redirect_to @categ, notice: 'Categ was successfully created.' }
        format.json { render :show, status: :created, location: @categ }
      else
        format.html { render :new }
        format.json { render json: @categ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categs/1
  # PATCH/PUT /categs/1.json
  def update
    respond_to do |format|
      if @categ.update(categ_params)
        format.html { redirect_to @categ, notice: 'Categ was successfully updated.' }
        format.json { render :show, status: :ok, location: @categ }
      else
        format.html { render :edit }
        format.json { render json: @categ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categs/1
  # DELETE /categs/1.json
  def destroy
    @categ.destroy
    respond_to do |format|
      format.html { redirect_to categs_url, notice: 'Categ was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categ
      @categ = Categ.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categ_params
      params.require(:categ).permit(:name)
    end
end
