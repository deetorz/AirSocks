class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.bookings
    end
  end

  def create?
    true
  end

  def update?
    user_is_owner?
  end

  private

  def user_is_owner?
    # user => same as current_user, but in Pundit
    # record => the restaurant that was passed in `authorize @restaurant`
    user == record.sock.user
  end
end
