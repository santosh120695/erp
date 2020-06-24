class StockLevelsController < ApplicationController
  before_action :set_stock_level, only: [:show, :edit, :update, :destroy]

  # GET /stock_levels
  # GET /stock_levels.json
  def index
    @stock_levels = StockLevel.all
  end

  # GET /stock_levels/1
  # GET /stock_levels/1.json
  def show
  end

  # GET /stock_levels/new
  def new
    @stock_level = StockLevel.new
  end

  # GET /stock_levels/1/edit
  def edit
  end

  # POST /stock_levels
  # POST /stock_levels.json
  def create
    @stock_level = StockLevel.new(stock_level_params)

    respond_to do |format|
      if @stock_level.save
        format.html { redirect_to @stock_level, notice: 'Stock level was successfully created.' }
        format.json { render :show, status: :created, location: @stock_level }
      else
        format.html { render :new }
        format.json { render json: @stock_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_levels/1
  # PATCH/PUT /stock_levels/1.json
  def update
    respond_to do |format|
      if @stock_level.update(stock_level_params)
        format.html { redirect_to @stock_level, notice: 'Stock level was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_level }
      else
        format.html { render :edit }
        format.json { render json: @stock_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_levels/1
  # DELETE /stock_levels/1.json
  def destroy
    @stock_level.destroy
    respond_to do |format|
      format.html { redirect_to stock_levels_url, notice: 'Stock level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_level
      @stock_level = StockLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stock_level_params
      params.require(:stock_level).permit(:item_type, :item_id, :as_on, :quantity)
    end
end
