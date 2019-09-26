class MainDataController < ApplicationController
  before_action :set_main_datum, only: [:show, :edit, :update, :destroy]

  # GET /main_data
  # GET /main_data.json
  def index
    @main_data = MainDatum.all
  end

  # GET /main_data/1
  # GET /main_data/1.json
  def show
  end

  # GET /main_data/new
  def new
    @main_datum = MainDatum.new
  end

  # GET /main_data/1/edit
  def edit
  end

  # POST /main_data
  # POST /main_data.json
  def create
    @main_datum = MainDatum.new(main_datum_params)

    respond_to do |format|
      if @main_datum.save
        format.html { redirect_to @main_datum, notice: 'Main datum was successfully created.' }
        format.json { render :show, status: :created, location: @main_datum }
      else
        format.html { render :new }
        format.json { render json: @main_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_data/1
  # PATCH/PUT /main_data/1.json
  def update
    respond_to do |format|
      if @main_datum.update(main_datum_params)
        format.html { redirect_to @main_datum, notice: 'Main datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_datum }
      else
        format.html { render :edit }
        format.json { render json: @main_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_data/1
  # DELETE /main_data/1.json
  def destroy
    @main_datum.destroy
    respond_to do |format|
      format.html { redirect_to main_data_url, notice: 'Main datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_datum
      @main_datum = MainDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_datum_params
      params.require(:main_datum).permit(:email, :counter)
    end
end
