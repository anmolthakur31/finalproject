class BookingPolicy < ApplicationPolicy
 
  def index?
    return true if user.present? && (user.userrole_id==2 || user.userrole_id==1)
  end
 
  def show?
     return true if user.present? && (user.userrole_id==2 || user.userrole_id==1)
  end

  def create?
    return true if user.present? && (user.userrole_id==3)
  end
 
  def update?
     return true if user.present? && (user.userrole_id==3) && user == booking.uservehicle.user 
  end
 
  def destroy?
  end
 
  private
 
    def booking
      record
    end
end