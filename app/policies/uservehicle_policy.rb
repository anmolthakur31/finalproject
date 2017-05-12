class UservehiclePolicy < ApplicationPolicy
 
  def create?
    return false if !user.present? && (user.userrole_id==2 || user.userrole_id==1)
  end
 
  def update?
     return true if user.present? && (user.userrole_id==2 || user.userrole_id==1)
  end
 
  def destroy?
  end
 
  private
 
    def uservehicle
      record
    end
end