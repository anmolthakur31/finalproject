class ModelPolicy < ApplicationPolicy
 
  def create?
    return true if user.present? && (user.userrole_id==2 || user.userrole_id==1)
  end
 
  def update?
     return true if user.present? && (user.userrole_id==2 || user.userrole_id==1)
  end
 
  def destroy?
  end
 
  private
 
    def model
      record
    end
end