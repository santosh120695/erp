class PisController < ApplicationController
  before_action :set_pi, only: [:show, :edit, :update, :destroy,:add_orders]

  # GET /pis
  # GET /pis.json
  def index
    @pis = Pi.all
  end

  # GET /pis/1
  # GET /pis/1.json
  def show
  end

  # GET /pis/new
  def new
    @pi = Pi.new
  end

  # GET /pis/1/edit
  def edit
  end

  # POST /pis
  # POST /pis.json
  def create
    @pi = Pi.new(pi_params)
    @pi.user_id = current_user.id

    respond_to do |format|
      if @pi.save
        format.html { redirect_to @pi, notice: 'Pi was successfully created.' }
        format.json { render :show, status: :created, location: @pi }
      else
        format.html { render :new }
        format.json { render json: @pi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pis/1
  # PATCH/PUT /pis/1.json
  def update
    respond_to do |format|
      if @pi.update(pi_params)
        format.html { redirect_to @pi, notice: 'Pi was successfully updated.' }
        format.json { render :show, status: :ok, location: @pi }
      else
        format.html { render :edit }
        format.json { render json: @pi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pis/1
  # DELETE /pis/1.json
  def destroy
    @pi.destroy
    respond_to do |format|
      format.html { redirect_to pis_url, notice: 'Pi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_orders
    OrderDetail.where(:id => params[:orders]).update_all(:pi_id => @pi.id)
    redirect_to pi_path(@pi),notice: "Orders added successfully"

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pi
      @pi = Pi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pi_params
      params.require(:pi).permit(:customer_id, :uuid, :order_date, :reference, :user_id, :sales_person,:buyer_order_date)
    end
end
