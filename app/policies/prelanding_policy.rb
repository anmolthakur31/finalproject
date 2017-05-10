class PrelandingPolicy < ApplicationPolicy
 
  def create?
    false 
  end
 
 
  private
 
    def prelanding
      record
    end
end