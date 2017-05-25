class ApplicationController < ActionController::Base
 	 protect_from_forgery with: :exception
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  before_action :store_current_location, :unless => :devise_controller?
    
    def after_sign_in_path_for(resource)
      if (current_user.userrole_id==1 || current_user.userrole_id==2)
     admin_path
      else     
     services_path
      end
    end

    def after_sign_up_path_for(resource)    
     services_path
    end

    private

    def store_current_location
      store_location_for(:user, request.url)
    end
 
  private
 
    def user_not_authorized
      flash[:warning] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end


end
