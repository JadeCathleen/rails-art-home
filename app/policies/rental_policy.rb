class RentalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def new?
    create?
  end

  def create?
    record.artpiece.user != user
  end

  def change_status?
    record.artpiece.user == user
  end

  def cancel_rental?
    record.user = user
  end

  def update?
    record.artpiece.user != user
  end

end
