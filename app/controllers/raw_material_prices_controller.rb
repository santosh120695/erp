class RawMaterialPricesController < ApplicationController
  before_action :set_raw_material_price, only: [:show, :edit, :update, :destroy]

  # GET /raw_material_prices
  # GET /raw_material_prices.json
  def index
    @raw_material_prices = RawMaterialPrice.all
  end

  # GET /raw_material_prices/1
  # GET /raw_material_prices/1.json
  def show
  end

  # GET /raw_material_prices/new
  def new
    @raw_material_price = RawMaterialPrice.new
  end

  # GET /raw_material_prices/1/edit
  def edit
  end

  # POST /raw_material_prices
  # POST /raw_material_prices.json
  def create
    @raw_material_price = RawMaterialPrice.new(raw_material_price_params)

    respond_to do |format|
      if @raw_material_price.save
        format.html { redirect_to @raw_material_price, notice: 'Raw material price was successfully created.' }
        format.json { render :show, status: :created, location: @raw_material_price }
      else
        format.html { render :new }
        format.json { render json: @raw_material_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raw_material_prices/1
  # PATCH/PUT /raw_material_prices/1.json
  def update
    respond_to do |format|
      if @raw_material_price.update(raw_material_price_params)
        format.html { redirect_to @raw_material_price, notice: 'Raw material price was successfully updated.' }
        format.json { render :show, status: :ok, location: @raw_material_price }
      else
        format.html { render :edit }
        format.json { render json: @raw_material_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raw_material_prices/1
  # DELETE /raw_material_prices/1.json
  def destroy
    @raw_material_price.destroy
    respond_to do |format|
      format.html { redirect_to raw_material_prices_url, notice: 'Raw material price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raw_material_price
      @raw_material_price = RawMaterialPrice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def raw_material_price_params
      params.require(:raw_material_price).permit(:raw_material_id, :price, :price_date)
    end
end
