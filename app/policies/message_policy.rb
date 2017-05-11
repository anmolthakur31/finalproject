class MessagePolicy < ApplicationPolicy
 
  def create?
    false 
  end
 
 
  private
 
    def message
      record
    end
end