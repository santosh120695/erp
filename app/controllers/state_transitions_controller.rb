class StateTransitionsController < ApplicationController
  before_action :set_state_transition, only: [:show, :edit, :update, :destroy]

  # GET /state_transitions
  # GET /state_transitions.json
  def index
    @state_transitions = StateTransition.all
  end

  # GET /state_transitions/1
  # GET /state_transitions/1.json
  def show
  end

  # GET /state_transitions/new
  def new
    @state_transition = StateTransition.new
  end

  # GET /state_transitions/1/edit
  def edit
  end

  # POST /state_transitions
  # POST /state_transitions.json
  def create
    @state_transition = StateTransition.new(state_transition_params)

    respond_to do |format|
      if @state_transition.save
        format.html { redirect_to @state_transition, notice: 'State transition was successfully created.' }
        format.json { render :show, status: :created, location: @state_transition }
      else
        format.html { render :new }
        format.json { render json: @state_transition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_transitions/1
  # PATCH/PUT /state_transitions/1.json
  def update
    respond_to do |format|
      if @state_transition.update(state_transition_params)
        format.html { redirect_to @state_transition, notice: 'State transition was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_transition }
      else
        format.html { render :edit }
        format.json { render json: @state_transition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_transitions/1
  # DELETE /state_transitions/1.json
  def destroy
    @state_transition.destroy
    respond_to do |format|
      format.html { redirect_to state_transitions_url, notice: 'State transition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_transition
      @state_transition = StateTransition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def state_transition_params
      params.require(:state_transition).permit(:from, :to, :comment, :user_id, :order_detail_id)
    end
end
