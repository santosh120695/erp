class CostSheetsController < ApplicationController
  before_action :set_cost_sheet, only: [:show, :edit, :update, :destroy]

  # GET /cost_sheets
  # GET /cost_sheets.json
  def index
    @product = Product.find(params[:product_id])
    @cost_sheets = @product.cost_sheets
  end

  # GET /cost_sheets/1
  # GET /cost_sheets/1.json
  def show
  end

  # GET /cost_sheets/new
  def new
    @cost_sheet = CostSheet.new
  end

  # GET /cost_sheets/1/edit
  def edit
  end

  # POST /cost_sheets
  # POST /cost_sheets.json
  def create
    @cost_sheet = CostSheet.new(cost_sheet_params)

    respond_to do |format|
      if @cost_sheet.save
        format.html { redirect_to @cost_sheet, notice: 'Cost sheet was successfully created.' }
        format.json { render :show, status: :created, location: @cost_sheet }
      else
        format.html { render :new }
        format.json { render json: @cost_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cost_sheets/1
  # PATCH/PUT /cost_sheets/1.json
  def update
    respond_to do |format|
      if @cost_sheet.update(cost_sheet_params)
        format.html { redirect_to @cost_sheet, notice: 'Cost sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @cost_sheet }
      else
        format.html { render :edit }
        format.json { render json: @cost_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cost_sheets/1
  # DELETE /cost_sheets/1.json
  def destroy
    @cost_sheet.destroy
    respond_to do |format|
      format.html { redirect_to cost_sheets_url, notice: 'Cost sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost_sheet
      @cost_sheet = CostSheet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cost_sheet_params
      params.require(:cost_sheet).permit(:name, :product_id, :raw_material_id, :cost_head_id, :quantity, :item_type, :value, :item_id, :active, :version)
    end
end
