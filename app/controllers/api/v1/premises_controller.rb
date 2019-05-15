class Api::V1::PremisesController < Api::V1::BaseController
  def index
    @premises = policy_scope(Premise)
  end
end
