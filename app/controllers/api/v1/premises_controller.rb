class Api::V1::PremisesController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_premise, only: [ :show, :update, :destroy ]

  def index
    @premises = policy_scope(Premise)
    #  @premises = Premise.all
  end

  def show
  end

  def create
    @premise = Premise.new(premise_params)
    @premise.user = current_user
    authorize @premise
    if @premise.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @premise.update(premise_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @premise.destroy
    head :no_content
  end

  private

  def set_premise
    @premise = Premise.find(params[:id])
    authorize @premise # For Pundit
  end

  def premise_params
    params.require(:premise).permit(:name, :address)
  end

  def render_error
    render json: { errors: @premise.errors.full_messages },
      status: :unprocessable_entity
  end
end
