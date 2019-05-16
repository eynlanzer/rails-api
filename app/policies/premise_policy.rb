class PremisePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    record.user == user
    # Only premise owners can update them
  end

  def create?
    !user.nil?
    # Any logged in user can create a premise
  end

  def destroy?
    update?
    # Only premise owners can delete them
  end
end
