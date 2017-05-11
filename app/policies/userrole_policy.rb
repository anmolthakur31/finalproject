class UserrolePolicy < ApplicationPolicy
 
  def index?
    return true if user.present? && user.userrole_id==1
  end

  def create?
    return true if user.present? && user.userrole_id==1
  end
 
  def update?
     return true if user.present? && user.userrole_id==1
  end
 
  def destroy?
  end
 
  private
 
    def userrole
      record
    end
end