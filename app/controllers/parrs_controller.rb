class ParrsController < ApplicationController
  before_action :set_parr, only: [:show, :edit, :update, :destroy]

  # GET /parrs
  # GET /parrs.json
  def index
    @parrs = Parr.all
  end

  # GET /parrs/1
  # GET /parrs/1.json
  def show
  end

  # GET /parrs/new
  def new
    @parr = Parr.new
  end

  # GET /parrs/1/edit
  def edit
  end

  # POST /parrs
  # POST /parrs.json
  def create
    @parr = Parr.new(parr_params)

    respond_to do |format|
      if @parr.save
        format.html { redirect_to @parr, notice: 'Parr was successfully created.' }
        format.json { render :show, status: :created, location: @parr }
      else
        format.html { render :new }
        format.json { render json: @parr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parrs/1
  # PATCH/PUT /parrs/1.json
  def update
    respond_to do |format|
      if @parr.update(parr_params)
        format.html { redirect_to @parr, notice: 'Parr was successfully updated.' }
        format.json { render :show, status: :ok, location: @parr }
      else
        format.html { render :edit }
        format.json { render json: @parr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parrs/1
  # DELETE /parrs/1.json
  def destroy
    @parr.destroy
    respond_to do |format|
      format.html { redirect_to parrs_url, notice: 'Parr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parr
      @parr = Parr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parr_params
      params.require(:parr).permit(:name, :cant_id)
    end
end
