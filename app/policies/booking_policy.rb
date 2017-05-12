class BookingPolicy < ApplicationPolicy
 
  def index?
    return true if user.present? && (user.userrole_id==2 || user.userrole_id==1)
  end
 
  def show?
     return true if user.present? && (user.userrole_id==2 || user.userrole_id==1)
  end

  def create?
    return true if user.present?
  end
 
  def update?
     return true if user.present? 
  end
 
  def destroy?
  end
 
  private
 
    def booking
      record
    end
end