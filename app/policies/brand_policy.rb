class BrandPolicy < ApplicationPolicy
 
  def create?
    return true if user.present? && user.admin
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