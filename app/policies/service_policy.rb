class ServicePolicy < ApplicationPolicy
 
  def show?
    true
  end

  def create?
    return true if user.present? && (user.userrole_id==1 || user.userrole_id==2)
  end
 
  def update?
     return true if user.present? && (user.userrole_id==1 || user.userrole_id==2)
  end
 
  def destroy?
  end
 
  private
 
    def service
      record
    end
end