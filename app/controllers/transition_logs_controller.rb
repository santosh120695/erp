class TransitionLogsController < ApplicationController
  before_action :set_transition_log, only: [:show, :edit, :update, :destroy]

  # GET /transition_logs
  # GET /transition_logs.json
  def index
    @transition_logs = TransitionLog.all
  end

  # GET /transition_logs/1
  # GET /transition_logs/1.json
  def show
  end

  # GET /transition_logs/new
  def new
    @transition_log = TransitionLog.new
  end

  # GET /transition_logs/1/edit
  def edit
  end

  # POST /transition_logs
  # POST /transition_logs.json
  def create
    @transition_log = TransitionLog.new(transition_log_params)
    @transition_log.user_id = current_user.id
    respond_to do |format|
      if @transition_log.save
        format.html { redirect_to @transition_log.order_detail, notice: 'Transition log was successfully created.' }
        format.json { render :show, status: :created, location: @transition_log }
      else
        format.html { render :new }
        format.json { render json: @transition_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transition_logs/1
  # PATCH/PUT /transition_logs/1.json
  def update
    respond_to do |format|
      if @transition_log.update(transition_log_params)
        format.html { redirect_to @transition_log, notice: 'Transition log was successfully updated.' }
        format.json { render :show, status: :ok, location: @transition_log }
      else
        format.html { render :edit }
        format.json { render json: @transition_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transition_logs/1
  # DELETE /transition_logs/1.json
  def destroy
    @transition_log.destroy
    respond_to do |format|
      format.html { redirect_to transition_logs_url, notice: 'Transition log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transition_log
      @transition_log = TransitionLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transition_log_params
      params.require(:transition_log).permit(:from_order_state_id, :to_order_state_id, :user_id, :comment, :order_detail_id)
    end
end
