class UservehiclePolicy < ApplicationPolicy
 
  def create?
    return true if user.present? && (user.userrole_id==3)
  end
 
  def update?
     return true if user.present? && (user.userrole_id==3) && user == uservehicle.user
  end
 
  def destroy?
  end
 
  private
 
    def uservehicle
      record
    end
end