class OrderDetailsController < ApplicationController
  before_action :set_order_detail, only: [:show, :edit, :update, :destroy,:ws_transition,:is_transition]

  # GET /order_details
  # GET /order_details.json
  def index
    @order_details = OrderDetail.all
  end

  # GET /order_details/1
  # GET /order_details/1.json
  def show
  end

  # GET /order_details/new
  def new
    @order_detail = OrderDetail.new
  end

  # GET /order_details/1/edit
  def edit
  end

  # POST /order_details
  # POST /order_details.json
  def create
    @order_detail = OrderDetail.new(order_detail_params)

    respond_to do |format|
      if @order_detail.save
        format.html { redirect_to @order_detail, notice: 'Order detail was successfully created.' }
        format.json { render :show, status: :created, location: @order_detail }
      else
        format.html { render :new }
        format.json { render json: @order_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_details/1
  # PATCH/PUT /order_details/1.json
  def update
    respond_to do |format|
      if @order_detail.update(order_detail_params)
        format.html { redirect_to @order_detail, notice: 'Order detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_detail }
      else
        format.html { render :edit }
        format.json { render json: @order_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_details/1
  # DELETE /order_details/1.json
  def destroy
    @order_detail.destroy
    respond_to do |format|
      format.html { redirect_to order_details_url, notice: 'Order detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def ws_transition
    WoodenStageTransitionLog.create!(order_detail_id: @order_detail.id, :from_wooden_stage_id => @order_detail.wooden_stage_id,:to_wooden_stage_id => params[:state],:user_id=>current_user.id)
    @order_detail.wooden_stage_id = params[:state]
    @order_detail.save
    respond_to do |format|
      format.html { redirect_to order_details_url, notice: 'Order detail was successfully destroyed.' }
      format.json { @order_detail  }
    end


  end
  def is_transition
    IronStageTransitionLog.create!(order_detail_id: @order_detail.id, :from_iron_stage_id => @order_detail.iron_stage_id,:to_iron_stage_id => params[:state],:user_id=>current_user.id)
    @order_detail.iron_stage_id = params[:state]
    @order_detail.save
    respond_to do |format|
      format.html { redirect_to order_details_url, notice: 'Order detail was successfully destroyed.' }
      format.json { @order_detail  }
    end


  end

  def update_commercials
    orderdet  = OrderDetail.find(params[:order_id])
    orderdet[params[:field].to_sym] = params[:value]
    orderdet.save!
    respond_to do |format|
      format.html { redirect_to order_details_url, notice: 'Order detail was successfully destroyed.' }
      format.json { orderdet  }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_detail
      @order_detail = OrderDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_detail_params
      @params_require_order_detail_permit = params.require(:order_detail).permit(:pi_id, :product_id, :quantity, :rate, :discount_percentage, :amount, :tax, :total_amount, :status, :code,:delivery_weeks,:program,:packing_size,:buyer_reference)

    end
end
