class BrandPolicy < ApplicationPolicy
 
  def create?
    return true if user.present? && user.userrole_id== 1 || user.userrole_id== 2 
  end
 
  def update?
    false
  end
 
  def destroy?
    return true if user.present? && user == brand.user
  end
 
  private
 
    def brand
      record
    end
end