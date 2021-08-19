class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  ## inherits the same method from the ApplicationPolicy
  # def edit?
  #   update?
  # end

  def update?
    # user_is_owner? || user_is_admin?
    true
  end

  def destroy?
    # user_is_admin?
    true
  end

  private

  def user_is_owner?
    # user => same as current_user, but in Pundit
    # record => the restaurant that was passed in `authorize @restaurant`
    user == record.user
  end

  def user_is_admin?
    user.admin?
  end
end
