class CostSheetItemsController < ApplicationController
  before_action :set_cost_sheet_item, only: [:show, :edit, :update, :destroy]

  # GET /cost_sheet_items
  # GET /cost_sheet_items.json
  def index
    @cost_sheet_items = CostSheetItem.all
  end

  # GET /cost_sheet_items/1
  # GET /cost_sheet_items/1.json
  def show
  end

  # GET /cost_sheet_items/new
  def new
    @cost_sheet_item = CostSheetItem.new
  end

  # GET /cost_sheet_items/1/edit
  def edit
  end

  # POST /cost_sheet_items
  # POST /cost_sheet_items.json
  def create
    @cost_sheet_item = CostSheetItem.new(cost_sheet_item_params)

    respond_to do |format|
      if @cost_sheet_item.save!
        format.html { redirect_to @cost_sheet_item.cost_sheet, notice: 'Cost sheet item was successfully created.' }
        format.json { render :show, status: :created, location: @cost_sheet_item }
      else
        format.html { render :new }
        format.json { render json: @cost_sheet_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cost_sheet_items/1
  # PATCH/PUT /cost_sheet_items/1.json
  def update
    respond_to do |format|
      if @cost_sheet_item.update(cost_sheet_item_params)
        format.html { redirect_to @cost_sheet_item, notice: 'Cost sheet item was successfully updated.' }
        format.json { render :show, status: :ok, location: @cost_sheet_item }
      else
        format.html { render :edit }
        format.json { render json: @cost_sheet_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cost_sheet_items/1
  # DELETE /cost_sheet_items/1.json
  def destroy
    cs = @cost_sheet_item.cost_sheet
    @cost_sheet_item.destroy
    respond_to do |format|

      format.html { redirect_to cs, notice: 'Cost sheet item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost_sheet_item
      @cost_sheet_item = CostSheetItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cost_sheet_item_params
      params.require(:cost_sheet_item).permit(:name, :raw_material_id, :cost_head_id, :quantity ,:value,:cost,:cost_sheet_id)
    end
end
