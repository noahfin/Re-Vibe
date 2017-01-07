class ActionStepsController < ApplicationController
  before_action :set_action_step, only: [:show, :update, :destroy]

  # GET /action_steps
  def index
    @action_steps = ActionStep.all

    render json: @action_steps
  end

  # GET /action_steps/1
  def show
    render json: @action_step
  end

  # POST /action_steps
  def create
    @action_step = ActionStep.new(action_step_params)

    if @action_step.save
      render json: @action_step, status: :created, location: @action_step
    else
      render json: @action_step.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /action_steps/1
  def update
    if @action_step.update(action_step_params)
      render json: @action_step
    else
      render json: @action_step.errors, status: :unprocessable_entity
    end
  end

  # DELETE /action_steps/1
  def destroy
    @action_step.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_step
      @action_step = ActionStep.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def action_step_params
      params.require(:action_step).permit(:title, :description, :goal_id)
    end
end
