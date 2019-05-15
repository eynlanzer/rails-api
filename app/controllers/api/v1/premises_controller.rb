class Api::V1::PremisesController < Api::V1::BaseController
  def index
    @premises = policy_scope(Premise)
    #  @premises = Premise.all
  end

  def show
    @premise = Premise.find(params[:id])
    authorize @premise # For Pundit
  end
end
