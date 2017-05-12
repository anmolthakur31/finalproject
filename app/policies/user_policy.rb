class UserPolicy < ApplicationPolicy
 
  def show?
    return true if @user.present?
  end
 
  def admin?
     return true if @user.present? && (@user.userrole_id==2 || @user.userrole_id==1)
  end
 
  def destroy?
  end
 
  private
 
    def user
      record
    end
end